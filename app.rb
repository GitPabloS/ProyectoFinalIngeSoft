require 'sinatra'
require "matrix.rb"
require "matrix/eigenvalue_decomposition.rb"
require "matrix/lup_decomposition.rb"

get '/' do
    erb :inicio
end

post '/llenadoDeInformacion' do
    @nombreJugador = params[:nombreLabel]
    erb :datosSimulacion
end

get '/llenadoDeInformacion' do 
    erb :datosSimulacion
end

post '/resultadoSimulacion' do
    @dimX = params[:dimX]
    @dimY = params[:dimY]
    @posX = params[:posX]
    @posY = params[:posY]
    @Orient = params[:Orient]
    @pasos = params[:pasos]

    @filas = @dimX.to_i
    @columnas = @dimY.to_i

    @matrix = Matrix.zero(1,1)

    @auxX=@posX
    @auxY=@posY

    @iniX = @auxX.to_i
    @iniY = @auxY.to_i
    if @filas >= 1 && @columnas >= 1
        @filas = @dimX.to_i
        @columnas = @dimY.to_i
        @matrix = Matrix.zero(@filas,@columnas)
    else
        puts 'no se pueden ingresar numeros negativos'
    end

    @roadN = @pasos.split(",")
   
    @tamanio = @roadN.length

    @indice = 0
    malosPasos = 0

    @destinoFinal = [@iniX, @iniY]

    until @tamanio==(@indice) do
        @steph = @roadN[@indice]

        case @Orient
            when 'North'
                case @steph
                    when 'I'
                        @Orient='West'
                    when 'D'
                        @Orient='East'
                    when 'F'                        
                        @iniX = @iniX - 1
                        @matrix[@iniX,@iniY] = 1 
                        @Orient='North' 
                    else
                    malosPasos = malosPasos + 1
                end
            when 'East'
                case @steph
                when 'I'
                    @Orient='North'
                when 'D'
                    @Orient='South'
                when 'F'                        
                    @iniY = @iniY + 1
                    @matrix[@iniX,@iniY] = 1 
                    @Orient='East' 
                else
                    malosPasos = malosPasos + 1
            end
            when 'South'
                case @steph
                when 'I'
                    @Orient='East'
                when 'D'
                    @Orient='West'
                when 'F'                  
                    @iniX = @iniX + 1
                    @matrix[@iniX,@iniY] = 1 
                    @Orient='South'
                    
                else
                    malosPasos = malosPasos + 1
            end 
            when 'West'
                case @steph
                when 'I'
                    @Orient='South'
                when 'D'
                    @Orient='North'
                when 'F'                         
                    @iniY = @iniY - 1
                    @matrix[@iniX,@iniY] = 1 
                    @Orient='West'
                else
                    malosPasos = malosPasos + 1
            end
            else
                puts 'comando invalido'
        end
        @indice = @indice + 1
    end

    @destinoFinal = [@iniX,@iniY]
    erb :resultadoSimulacion
end

get '/resultadoSimulacion' do
    erb :resultadoSimulacion
end
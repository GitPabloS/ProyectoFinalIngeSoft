require "matrix.rb"
require "matrix/eigenvalue_decomposition.rb"
require "matrix/lup_decomposition.rb"


class CarSimulator   

    $rows = 0
    $columns = 0
    
    $posX = 0
    $posY = 0
    $direction = 'North'

    def setDirection dir
        $direction = dir
        
    end    
    def setSizeRows cantRows
        $rows = cantRows
        
    end
    def getSizeRows
        if $rows >= 1
            return $rows
        else
            'no se pueden ingresar numeros negativos'
        end 
    end

    
    def setSizeColumns cantColumns
        $columns = cantColumns
        
    end
    def getSizeColumns
        if $columns >= 1
            return $columns
        else
            'no se pueden ingresar numeros negativos'
        end 
        
    end
    

    def createMatrix
        $matrix = Matrix.zero($rows, $columns)
        tamMatrix = [$matrix.row_count, $matrix.column_count]
        return tamMatrix
    end

    def initializer posX, posY
        if posX >= 0 && posY >= 0
            $posX = posX
            $posY = posY
            $orientation = "North"
            $matrix[posX,posY] = 1
            return [posX, posY]
        else
            'no se puede iniciar en esas coordenadas'
        end
        
    end
    
    def setOrientation setOrient 
        if  setOrient == 'West' || setOrient == 'East' || setOrient == 'North' || setOrient == 'South'
            $orientation =  setOrient
        else
            $orientation =  'comando invalido'
        end
    end
    def getOrientation
        return $orientation
    end

    def runSimulation moves
        $matrix[$posX,$posY] = 0
        malosPasos = 0
        case moves
            when 'I'
            when 'D'
            when 'F'
                $posY = $posY + 1
                $matrix[$posX,$posY] = 1 
            else
                malosPasos = malosPasos + 1
        end
    end
    
    def runSimulationAux movess
        moves = movess.split(",")
        tamanio = moves.length
        malosPasos = 0
        $matrix[$posX,$posY] = 0
        indice = 0;
        until indice == tamanio do
            case $direction
                when 'North'
                    case moves[indice]
                        when 'I'
                            $direction='West'
                        when 'D'
                            $direction='East'
                        when 'F'
                            if $posX >= 0 && $posY >= 0 && $posX <= $rows && $posY <= $columns
                                $posX = $posX - 1
                                $matrix[$posX,$posY] = 1
                                $direction='North' 
                            end
                        else
                            malosPasos = malosPasos + 1
                    end
                when 'East'
                    case moves[indice]
                        when 'I'
                            $direction='North'
                        when 'D'
                            $direction='South'
                        when 'F'
                            if $posX >= 0 && $posY >= 0 && $posX <= $rows && $posY <= $columns
                                $posY = $posY + 1
                                $matrix[$posX,$posY] = 1
                                $direction='East'
                            end
                        else
                            malosPasos = malosPasos + 1
                    end
                when 'South'
                    case moves[indice]
                        when 'I'
                            $direction='East'
                        when 'D'
                            $direction='West'
                        when 'F'
                            if $posX >= 0 && $posY >= 0 && $posX <= $rows && $posY <= $columns                          
                                $posX = $posX + 1
                                $matrix[$posX,$posY] = 1 
                                $direction='South'
                            end
                        else
                            malosPasos = malosPasos + 1
                    end 
                when 'West'
                    case moves[indice]
                        when 'I'
                            $direction='South'
                        when 'D'
                            $direction='North'
                        when 'F'
                            if $posX >= 0 && $posY >= 0 && $posX <= $rows && $posY <= $columns                          
                                $posY = $posY - 1
                                $matrix[$posX,$posY] = 1 
                                $direction='West'
                            end
                        else
                            malosPasos = malosPasos + 1
                        end
                else
                    puts 'comando invalido'
            end
            indice=indice+1
        end
        return [$posX, $posY]
    end

    
    def getPosition
        pos = [$posX, $posY]
        return pos
    end
    
 end
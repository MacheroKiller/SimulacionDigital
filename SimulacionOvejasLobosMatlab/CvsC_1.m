function t = CvsC(a,n)
z = a;

[axiX, axiY] = size(a);
% Población inicial
pri = numel(a(a==2));
disp(pri);

for i = 1:n
   
for b = 1:axiY
    for c= 1:axiX
    % esta parte es para valores que no estan en los bordes ya que los
    % valores del borde nos presentan ciertos problemas
    if (b < axiY && b > 1) && (c < axiX && c > 1)        
        % este switch nos ayua a determinar el caso en el que se cae
        % sea 1, espacio en blanco, 2 conejo o 3 un lobo
        
        switch a(b,c)
            %El caso 3 es en el cual el espacio en el que estamos parados
            %es un lobo
            case 3
                %sim = randi(8);
                %En esta parte se define como el lobo mata al conejo =D
                if a(b+1,c+1) == 2
                    a(b+1,c+1) = 1;
                end
                if a(b+1,c-1) == 2
                    a(b+1,c-1) = 1;
                end
                if a(b-1,c+1)== 2
                     a(b-1,c+1)= 1;
                end
                if a(b-1,c-1)== 2
                     a(b-1,c-1)= 1;
                end
                % para los siguientes
                if a(b,c+1) == 2
                    a(b,c+1) = 1;
                end
                if a(b,c-1) == 2
                    a(b,c-1) = 1;
                end
                if a(b+1,c) == 2
                    a(b+1,c) = 1; 
                end
                if a(b-1,c) == 2
                    a(b-1,c) = 1;
                end                
               % if  (sim == 5) || (sim == 1) || (sim == 2) || (sim == 3) 
               %      a(b,c) = 1;
               % end

                %aquí termina la definición de como se mata al conejo 
           % Cómo se reproducen los conejos
            case 2
                if (a(b-1,c) == 2) || (a(b+1,c) == 2) || a(b,c-1) == 2  || a(b,c+1) == 2 || a(b-1,c-1)== 2 || a(b-1,c+1)== 2 || a(b+1,c-1) == 2 || a(b+1,c+1) == 2
                %verificamos los valores que rodean al conejo
                if a(b+1,c+1) == 2
                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end
                    if a(b-1,c+1)== 1
                         a(b-1,c+1)= 2;end
                    if a(b-1,c-1)== 1
                        a(b-1,c-1)= 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                %fin de la verificacio
                end

                if a(b+1,c-1) == 2
                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end
                    if a(b-1,c+1)== 1
                         a(b-1,c+1)= 2;end
                    if a(b-1,c-1)== 1
                        a(b-1,c-1)= 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                %fin de la verificacio
                end

                if a(b-1,c+1)== 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end
                    if a(b-1,c+1)== 1
                         a(b-1,c+1)= 2;end
                    if a(b-1,c-1)== 1
                        a(b-1,c-1)= 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                %fin de la verificacio
                end

                if a(b-1,c-1)== 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end
                    if a(b-1,c+1)== 1
                         a(b-1,c+1)= 2;end
                    if a(b-1,c-1)== 1
                        a(b-1,c-1)= 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                %fin de la verificacio
                end

                % para los siguientes
                if a(b,c+1) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end
                    if a(b-1,c+1)== 1
                         a(b-1,c+1)= 2;end
                    if a(b-1,c-1)== 1
                        a(b-1,c-1)= 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                %fin de la verificacio
                end

                if a(b,c-1) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end
                    if a(b-1,c+1)== 1
                         a(b-1,c+1)= 2;end
                    if a(b-1,c-1)== 1
                        a(b-1,c-1)= 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                %fin de la verificacio
                end

                if a(b+1,c) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end
                    if a(b-1,c+1)== 1
                         a(b-1,c+1)= 2;end
                    if a(b-1,c-1)== 1
                        a(b-1,c-1)= 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                %fin de la verificacio
                end

                if a(b-1,c) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end
                    if a(b-1,c+1)== 1
                         a(b-1,c+1)= 2;end
                    if a(b-1,c-1)== 1
                        a(b-1,c-1)= 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                %fin de la verificacio
                end

               

                end
        end
    
    end

    % valores en el borde

    %borde superior
    if (c < axiY && c > 1) && (b == 1)
        %switch con la misma función
        switch a(b,c)
            case 3                
               if a(b+1,c+1) == 2
                   a(b+1,c+1) = 1;
               end

                if a(b,c+1) == 2
                    a(b,c+1) = 1;
                end

                if a(b+1,c) == 2
                    a(b+1,c) = 1; 
                end
               % sim = randi(10);
               % if  sim == 5 ||  sim == 6 ||  sim == 7 ||  sim == 8
               %      a(b,c) = 1;
               % end

            case 2
                if  (a(b+1,c) == 2) || a(b,c+1) == 2 || a(b+1,c+1) == 2
                  
                %verificamos los valores que rodean al conejo
                if a(b+1,c+1) == 2
                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                %fin de la verificacio
                end

                % para los siguientes
                if a(b,c+1) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                %fin de la verificacio
                end



                if a(b+1,c) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end 
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                %fin de la verificacio
                end
               
                end

        end

    end

    %borde lateral izquierdo 
    if (b < axiX && b > 1) && (c == 1)
        %switch con la misma función
        switch a(b,c)
            case 3                
               if a(b+1,c+1) == 2
                   a(b+1,c+1) = 1;
               end

                if a(b+1,c) == 2
                    a(b+1,c) = 1;
                end

                if a(b,c+1) == 2
                    a(b+1,c) = 1; 
                end

           %     sim = randi(10);
           %     if  sim == 5 ||  sim == 6 ||  sim == 7 ||  sim == 8
           %          a(b,c) = 1;
           %     end

            case 2
                if  (a(b+1,c) == 2) || a(b,c+1) == 2 || a(b+1,c+1) == 2
                %verificamos los valores que rodean al conejo
                if a(b+1,c+1) == 2
                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                %fin de la verificacio
                end

                % para los siguientes
                if a(b,c+1) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                %fin de la verificacio
                end



                if a(b+1,c) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c+1) == 1
                        a(b+1,c+1) = 2;end 
                    % para los siguientes
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end 
                %fin de la verificacio
                end
               
                end
        end

    end

    %borde lateral derecho

    if (b < axiX && b > 1) && (c == axiY)
        %switch con la misma función
        switch a(b,c)
            case 3                
               if a(b+1,c-1) == 2
                   a(b+1,c-1) = 1;
               end

                if a(b,c-1) == 2
                    a(b,c-1) = 1;
                end

                if a(b+1,c) == 2
                    a(b+1,c) = 1; 
                end

          %      sim = randi(10);
          %      if  sim == 5 ||  sim == 6 ||  sim == 7 ||  sim == 8
          %           a(b,c) = 1;
          %      end

            case 2
                if  (a(b+1,c) == 2) || a(b,c-1) == 2 || a(b+1,c-1) == 2
                    
                %verificamos los valores que rodean al conejo
                if a(b+1,c) == 2
                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end
                        
                    % para los siguientes
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                        
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end 
                        
                %fin de la verificacio
                end

                % para los siguientes
                if a(b,c-1) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end
                        
                    % para los siguientes
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                        
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end 
                        
                %fin de la verificacio
                end



                if a(b+1,c-1) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b+1,c) == 1
                        a(b+1,c) = 2;end
                        
                    % para los siguientes
                    if a(b,c-1) == 1
                        a(b,c-1) = 2;end
                        
                    if a(b+1,c-1) == 1
                        a(b+1,c-1) = 2;end 
                        
                %fin de la verificacio
                end
               
                end

        end

    end

    %borde inferior 

    if (c < axiY && c > 1) && (b == axiX)
        %switch con la misma función
        switch a(b,c)
            case 3                
               if a(b,c+1) == 2
                   a(b,c+1) = 1;
               end

                if a(b-1,c+1) == 2
                    a(b-1,c+1) = 1;
                end

                if a(b-1,c) == 2
                    a(b-1,c) = 1; 
                end
         %       sim = randi(10);
         %       if  sim == 5 ||  sim == 6 ||  sim == 7 ||  sim == 8
         %            a(b,c) = 1;
         %       end

            case 2


                if  (a(b,c+1) == 2) || a(b-1,c) == 2 || a(b-1,c+1) == 2
                    
                %verificamos los valores que rodean al conejo
                if a(b,c+1) == 2
                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                        
                    % para los siguientes
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                        
                    if a(b-1,c+1) == 1
                        a(b-1,c+1) = 2;end 
                        
                %fin de la verificacio
                end

                % para los siguientes
                if a(b-1,c) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                        
                    % para los siguientes
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                        
                    if a(b-1,c+1) == 1
                        a(b-1,c+1) = 2;end 
                        
                %fin de la verificacio
                end



                if a(b-1,c+1) == 2

                    % verificamos los valores alrededor del conejo si es 1
                    % cambiamos a 2
                    if a(b,c+1) == 1
                        a(b,c+1) = 2;end
                        
                    % para los siguientes
                    if a(b-1,c) == 1
                        a(b-1,c) = 2;end
                        
                    if a(b-1,c+1) == 1
                        a(b-1,c+1) = 2;end 
                        
                %fin de la verificacio
                end
               
                end

        end

    end

    %fin de los valores del borde



    end
    
end

%muerte de los lobos
for b = 1:axiY
    for c= 1:axiX
          sim = randi(10);
          if  (sim == 5 ||  sim == 6 ) &&  a(b,c) == 3
             a(b,c) = 1;
          end        
    end
end

% Esto muestra la cantidad de algo por iteración
t = a;
pri = numel(a(a==2));
disp(pri);

end

end


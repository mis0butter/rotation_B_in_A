function [frame_axes] = create_frame

% x = [1 0 0]; 
% y = [0 1 0]; 
% z = [0 0 1]; 
set(0, 'DefaultLineLineWidth', 4);

frame_axes.C11 = 1; 
frame_axes.C12 = 0; 
frame_axes.C13 = 0; 
frame_axes.C21 = 0; 
frame_axes.C22 = 1; 
frame_axes.C23 = 0; 
frame_axes.C31 = 0; 
frame_axes.C32 = 0; 
frame_axes.C33 = 1; 

C11 = frame_axes.C11; 
C12 = frame_axes.C12; 
C13 = frame_axes.C13; 
C21 = frame_axes.C21; 
C22 = frame_axes.C22; 
C23 = frame_axes.C23; 
C31 = frame_axes.C31; 
C32 = frame_axes.C32; 
C33 = frame_axes.C33; 

figure('name', 'test', 'position', [0 100 1000 500]); 

    subplot(1, 3, 1:2) 

        % X 
        plot3([0 1], [0 0], [0 0]); 
        hold on; grid on; 

        % Y 
        plot3([0 0], [0 1], [0 0]); 

        % Z 
        plot3([0 0], [0 0], [0 1]); 
        
        xlabel('x') 
        ylabel('y') 
        zlabel('z') 
        title('Rotation around an eigenaxis') 
    
    subplot(1, 3, 3) 
    
        % Creating latex table 
        end_hline = '\\ \hline'; 
        header = '\begin{tabular}{l|l|l|l} \hline';
        row0 = '   & b1  & b2  & b3  \\ \hline'; 
        row1 = sprintf('a1 & %0.2f & %0.2f & %0.2f %s', C11, C12, C13, end_hline); 
        row2 = sprintf('a2 & %0.2f & %0.2f & %0.2f %s', C21, C22, C23, end_hline); 
        row3 = sprintf('a3 & %0.2f & %0.2f & %0.2f %s', C31, C32, C33, end_hline); 
        ending = '\end{tabular} '; 
        cs = sprintf('%s %s %s %s %s %s', header, row0, row1, row2, row3, ending); 
        ha = annotation('textbox', [0.7 0.6 0 0], 'Interpreter', 'latex', 'fontsize', 14); 
        set(ha, 'String', cs);
        
        axis off 
        
end 
    
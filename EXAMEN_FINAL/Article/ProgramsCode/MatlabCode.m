% Funcion para graficar 'n' o '~' cerros en tres dimensiones
function []=cerros(~)
      t = linspace(-4,4,100);
      [x,y] = meshgrid(t);
      z = 4.*sin(x).*sin(y); surf(x,y,z);
      xlabel('Eje x');
      ylabel('Eje y');
      zlabel('Eje z');
      grid minor
end
%=========FORECASTING:
	if forecasting==1
		Y_temp = zeros(repfor,M);
			% compute 'repfor' predictions for each draw of ALPHA and SIGMA
			for ii = 1:repfor
				X_fore = [1 Y(T,:) X(T,2:M*(p-1)+1)];
				% Forecast of T+1 conditional on data at time T
				Y_temp(ii,:) = X_fore*ALPHA + randn(1,M)*chol(SIGMA);
			end
			% Matrix of predictions
			Y_pred(((irep-nburn)-1)*repfor+1:(irep-nburn)*repfor,:) = Y_temp;
            % Predictive likelihood
            PL(irep-nburn,:) = mvnpdf(Y1(T+1,:),X(T,:)*ALPHA,SIGMA);
            if PL(irep-nburn,:) == 0
                PL(irep-nburn,:) = 1;
            end
    end % end forecasting

[xData, yData] = prepareCurveData( t, A1 );

% Set up fittype and options.
ft = fittype( 'fourier1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 6.28318530717959];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult, 'b-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult,'r-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier3' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'g-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier4' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 1.5707963267949];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot(fitresult, 'y-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier5' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 0 0 1.25663706143592];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'm-', xData, yData,'k.');
xlabel( 't', 'Interpreter', 'none' );
grid on
legend

%%
[xData, yData] = prepareCurveData( t, A2 );

% Set up fittype and options.
ft = fittype( 'fourier1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 6.28318530717959];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult, 'b-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult,'r-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier3' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'g-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier4' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 6.28318530717959];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot(fitresult, 'y-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier5' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 0 0 6.28318530717959];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'm-', xData, yData,'k.');
xlabel( 't', 'Interpreter', 'none' );
grid on
legend

%%
[xData, yData] = prepareCurveData( t, A3 );

% Set up fittype and options.
ft = fittype( 'fourier1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 6.28318530717959];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult, 'b-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult,'r-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier3' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'g-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier4' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot(fitresult, 'y-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier5' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'm-', xData, yData,'k.');
xlabel( 't', 'Interpreter', 'none' );
grid on
legend

%%
[xData, yData] = prepareCurveData( t, A4 );

% Set up fittype and options.
ft = fittype( 'fourier1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 12.5663706143592];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult, 'b-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 6.28318530717959];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult,'r-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier3' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 4.18879020478639];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'g-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier4' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot(fitresult, 'y-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier5' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 0 0 2.51327412287183];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'm-', xData, yData,'k.');
xlabel( 't', 'Interpreter', 'none' );
grid on
legend

%%
[xData, yData] = prepareCurveData( t, A5 );

% Set up fittype and options.
ft = fittype( 'fourier1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 6.28318530717959];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult, 'b-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot( fitresult,'r-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier3' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 2.0943951023932];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'g-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier4' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 3.14159265358979];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% Plot fit with data.
plot(fitresult, 'y-', xData, yData, 'k.');
hold on

ft = fittype( 'fourier5' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0 0 0 0 0 0 1.25663706143592];
% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot( fitresult, 'm-', xData, yData,'k.');
xlabel( 't', 'Interpreter', 'none' );
grid on
legend

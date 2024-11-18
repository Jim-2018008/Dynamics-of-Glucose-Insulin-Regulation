%% HW - (iii)

% Constants for normal condition
lambda = 2470;
beta = 1430;  
nu = 139000;  
Ql = 8400;
theta = 2.5;
phi = 0.51;
alpha = 7600;
mu = 7200;

line_width = 2;

% Normal condition plot
subplot(3, 1, 1);
y = 0:0.0001:3;
x = (Ql) ./ (lambda + nu*y);
plot(x, y, 'Linewidth', line_width)
hold on
x = 0:0.0001:3;
y = (beta / alpha) * (x - phi);
y(x <= phi) = 0;
plot(x, y, 'Linewidth', line_width)
xlim([0 2]);
ylim([0 0.3]);
title('Normal Condition')
legend('Blood glucose', 'Insulin')
xlabel('Blood Glucose Conc (mg mL^{-1})');
ylabel('Blood Insulin Conc (mU mL^{-1})');
grid on

% Type-1 condition (20% of normal beta value)
subplot(3, 1, 2);
beta_type1 = 0.2 * beta;
y = 0:0.0001:3;
x = (Ql) ./ (lambda + nu*y);
plot(x, y, 'Linewidth', line_width)
hold on
x = 0:0.0001:3;
y = (beta_type1 / alpha) * (x - phi);
y(x <= phi) = 0;
plot(x, y, 'Linewidth', line_width)
xlim([0 2]);
ylim([0 0.1]);
title('Type-1 Condition (20% \beta)')
legend('Blood glucose', 'Insulin')
xlabel('Blood Glucose Conc (mg mL^{-1})');
ylabel('Blood Insulin Conc (mU mL^{-1})');
grid on

% Type-2 condition (20% of normal nu value)
subplot(3, 1, 3);
nu_type2 = 0.2 * nu;
y = 0:0.0001:3;
x = (Ql) ./ (lambda + nu_type2*y);
plot(x, y, 'Linewidth', line_width)
hold on
x = 0:0.0001:3;
y = (beta / alpha) * (x - phi);
y(x <= phi) = 0;
plot(x, y, 'Linewidth', line_width)
xlim([0 2]);
ylim([0 0.3]);
title('Type-2 Condition (20% \nu)')
legend('Blood glucose', 'Insulin')
xlabel('Blood Glucose Conc (mg mL^{-1})');
ylabel('Blood Insulin Conc (mU mL^{-1})');
grid on
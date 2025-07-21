create database Finance_Tracking;
use Finance_Tracking;
CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(100),
    Created_At DATE DEFAULT(current_date()) 
);
CREATE TABLE Categories (
    Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_Name VARCHAR(50),
    Type ENUM('Income', 'Expense')
);
CREATE TABLE Income (
    Income_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Category_ID INT,
    Amount DECIMAL(10, 2),
    Income_Date DATE,
    Description TEXT,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);
CREATE TABLE Expenses (
    Expense_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Category_ID INT,
    Amount DECIMAL(10, 2),
    Expense_Date DATE,
    Description TEXT,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);
INSERT INTO Users (Name, Email, Password, Created_At) VALUES
('Allison Hill', 'jillrhodes@miller.com', 'Te$8Taqi+J', '2024-08-27'),
('Brent Abbott', 'blairamanda@yahoo.com', 'Xp@e8J9u5*', '2024-12-09'),
('Michael Miles', 'amandasanchez@gray-mayo.net', '%m$5YtTy3O', '2025-05-04'),
('Deborah Richards', 'jeffrey28@yahoo.com', 'Y0J%DeRx@!', '2024-08-31'),
('Christopher Smith', 'williamrodriguez@hotmail.com', '%iRTg!B@u8', '2024-08-18'),
('Deborah Schwartz', 'suzannegreen@yahoo.com', '1TrU#X9vG*', '2024-09-30'),
('Brenda Holmes', 'sarahjohnson@hotmail.com', 'Kz0#e$6!Rc', '2024-08-06'),
('Angela Wise', 'matthew24@gmail.com', 'b2G&r*M8@A', '2024-12-22'),
('Jennifer Benson', 'walterlee@hotmail.com', 'f&9CJe^#Pc', '2024-09-09'),
('Michelle Keller', 'rodriguezjeffrey@hotmail.com', 'L3#mVyG9g@', '2025-06-11'),
('Terry Carson', 'smithashley@jenkins.com', 'Yw8^Px1$yT', '2024-11-04'),
('Shannon Richardson', 'leebrian@gmail.com', 'L&9W^bEtz5', '2024-08-10'),
('Christina Boyd', 'meganwhite@mcgrath.info', '#F1@YhEz5q', '2024-11-28'),
('Allison Johnson', 'lucas27@hotmail.com', 'Qz@3jMyg&X', '2024-12-15'),
('Robert Wade', 'bsmith@blake-murphy.com', 'eD*1pHy&Rz', '2025-02-23'),
('Christopher Jenkins', 'kathrynrichards@young.com', 'Bt7$Jxz^0#', '2025-05-10'),
('Michael Flynn', 'millsmichael@hotmail.com', 'Y9J$hCp3@w', '2025-03-28'),
('Vanessa Foster', 'michael55@hotmail.com', 'Ru!1Ktw$N3', '2024-08-30'),
('Nancy Mendez', 'sarahmiller@hotmail.com', 'Pc8$gRxK!w', '2024-09-22'),
('Scott Diaz', 'brownvictoria@weber.com', 'Sz2&Mn@5Qe', '2024-09-08'),
('Thomas Cooper', 'shellymorris@cruz.com', 'Kh8^qTZ0W@', '2025-04-16'),
('Chelsea Holt', 'murphychristopher@hotmail.com', 'Ot3$Fw*zYn', '2024-11-23'),
('Deborah Palmer', 'catherine05@hotmail.com', 'Wb2*XsH^T0', '2024-12-12'),
('Charles Stephenson', 'robertmccoy@yahoo.com', 'D9x^mLw$1G', '2024-09-24'),
('Melody Armstrong', 'stevenschristopher@hotmail.com', 'Xv@1Zl#oPy', '2025-01-15'),
('William Scott', 'lindseysullivan@davis.com', 'Qf9*Tgw#K0', '2024-09-03'),
('Samantha Caldwell', 'bradleyjoseph@yahoo.com', 'Vm@3UyrL#7', '2025-03-06'),
('James Lawrence', 'youngvictoria@hotmail.com', 'Ur6&pAZ^J2', '2024-10-08'),
('Brandi Carroll', 'robert73@taylor.com', 'K3$fAdTxR*', '2024-10-22'),
('Michael Shaffer', 'brownjohn@yahoo.com', 'pX1*TkcG#h', '2025-06-05'),
('Natalie Ramos', 'kenneth28@hotmail.com', 'We^5JrKf$2', '2025-06-18'),
('Annette Dixon', 'carolyn77@hotmail.com', 'Dw4!PoZr7#', '2024-10-11'),
('Allison Carter', 'richardsonryan@hotmail.com', 'Lq8@PfC&x1', '2025-01-02'),
('Michael Franklin', 'gonzalezwilliam@yahoo.com', 'Fo^2Lkm6#X', '2025-02-09'),
('Donna Austin', 'harrisrandy@gmail.com', 'As8&MqLz@t', '2024-08-25'),
('Ashley Harris', 'hnelson@hotmail.com', 'Rp#6KzL@t1', '2025-03-21'),
('Sara Romero', 'jacksonmichael@wood.com', 'Sz1!BmqLf%', '2024-09-17'),
('Susan Bowers', 'bobby05@yahoo.com', 'Kg3^Lzw!v2', '2025-06-14'),
('Edward Hines', 'paulscott@yahoo.com', 'Pb@2Mxy&R5', '2024-09-29'),
('James Thompson', 'zachary13@hotmail.com', 'Wc@6RnF$uY', '2025-04-29'),
('Emily Smith', 'terry27@yahoo.com', 'Yg*9MxLp@0', '2024-11-16'),
('Randy Maldonado', 'douglasrobinson@patterson.org', 'Hp9&MtzY*3', '2024-08-07'),
('Kimberly Brown', 'alexandriarichards@reyes.com', 'Yq#2Wml^Q9', '2025-05-17'),
('Erica Stone', 'freemansharon@hotmail.com', 'Lz3*NyXr^0', '2024-09-11'),
('Lauren Mccoy', 'richardmurphy@hotmail.com', 'Yf0#VkpR*9', '2025-01-23'),
('Eric Hansen', 'ashleywalters@hotmail.com', 'Nu^4VgKy&z', '2024-10-04'),
('Monica Diaz', 'michael42@jones.com', 'Gz3!Mkz%Lp', '2025-06-27'),
('Brittany Gonzalez', 'brownashley@decker.com', 'Qc^0FpXy@5', '2025-04-05'),
('Heather Simmons', 'brianna62@ferguson.com', 'Ov3&FkyZ#x', '2024-11-08'),
('Sean Miller', 'michaelcruz@hotmail.com', 'Ti1@KzV#up', '2025-02-13');

INSERT INTO Categories (Category_Name, Type) VALUES
-- Income Categories
('Salary', 'Income'),
('Freelancing', 'Income'),
('Interest', 'Income'),
('Dividends', 'Income'),
('Refunds', 'Income'),

-- Expense Categories
('Food', 'Expense'),
('Rent', 'Expense'),
('Entertainment', 'Expense'),
('Utilities', 'Expense'),
('Healthcare', 'Expense'),
('Transport', 'Expense'),
('Shopping', 'Expense');

INSERT INTO Income (User_ID, Category_ID, Amount, Income_Date, Description) VALUES
(1, 1, 75000.00, '2025-06-01', 'Monthly salary credited'),
(1, 2, 12000.00, '2025-06-12', 'Freelance project'),
(1, 3, 450.00, '2025-06-28', 'Savings account interest'),

(2, 1, 68000.00, '2025-05-31', 'Salary from company'),
(2, 4, 320.00, '2025-06-10', 'Stock dividends'),
(2, 5, 1000.00, '2025-06-20', 'Tax refund'),

(3, 1, 72000.00, '2025-06-01', 'Salary payment'),
(3, 2, 9500.00, '2025-06-14', 'UI design freelance'),
(3, 3, 500.00, '2025-06-25', 'Interest income'),

(4, 2, 15000.00, '2025-06-05', 'Freelance content work'),
(4, 1, 70000.00, '2025-06-01', 'Company salary'),
(4, 3, 600.00, '2025-06-29', 'Interest'),

(5, 1, 67000.00, '2025-06-01', 'Regular salary'),
(5, 4, 350.00, '2025-06-07', 'Mutual fund dividends'),
(5, 5, 900.00, '2025-06-21', 'E-commerce refund'),

(6, 1, 56000.00, '2025-06-01', 'Salary transfer'),
(6, 2, 17000.00, '2025-06-10', 'Freelance job'),
(6, 3, 430.00, '2025-06-30', 'Interest credited'),

(7, 2, 14000.00, '2025-06-03', 'Freelance backend project'),
(7, 1, 64000.00, '2025-06-01', 'Salary payment'),
(7, 5, 750.00, '2025-06-18', 'Product refund'),

(8, 1, 60000.00, '2025-06-01', 'Monthly salary'),
(8, 2, 13000.00, '2025-06-11', 'Logo design freelance'),
(8, 3, 420.00, '2025-06-26', 'Interest'),

(9, 4, 280.00, '2025-06-05', 'Dividends from stocks'),
(9, 1, 70000.00, '2025-06-01', 'Monthly salary'),
(9, 5, 850.00, '2025-06-22', 'Refund for travel'),

(10, 1, 72000.00, '2025-06-01', 'Salary income'),
(10, 2, 15000.00, '2025-06-09', 'Freelancing payment'),
(10, 3, 490.00, '2025-06-30', 'Bank interest'),

(11, 1, 73000.00, '2025-06-01', 'Monthly salary'),
(11, 4, 310.00, '2025-06-10', 'Dividends received'),
(11, 2, 11000.00, '2025-06-15', 'Freelancing income'),

(12, 1, 66000.00, '2025-06-01', 'Regular salary'),
(12, 3, 390.00, '2025-06-27', 'Savings interest'),
(12, 5, 950.00, '2025-06-18', 'Refund credited'),

(13, 2, 16000.00, '2025-06-08', 'Freelance software task'),
(13, 1, 69000.00, '2025-06-01', 'Salary from company'),
(13, 3, 470.00, '2025-06-25', 'Interest from bank'),

(14, 1, 61000.00, '2025-06-01', 'Monthly salary'),
(14, 5, 800.00, '2025-06-14', 'Refund processed'),
(14, 2, 13500.00, '2025-06-17', 'Freelance work'),

(15, 1, 78000.00, '2025-06-01', 'Salary deposit'),
(15, 2, 14500.00, '2025-06-12', 'Freelance job'),
(15, 4, 290.00, '2025-06-29', 'Dividend credited'),

(16, 1, 74000.00, '2025-06-01', 'Regular salary'),
(16, 3, 530.00, '2025-06-27', 'Interest from savings'),
(16, 5, 980.00, '2025-06-19', 'Refund credited'),

(17, 1, 70000.00, '2025-06-01', 'Company salary'),
(17, 2, 12000.00, '2025-06-14', 'Freelance billing'),
(17, 4, 315.00, '2025-06-30', 'Stock dividend'),

(18, 1, 75000.00, '2025-06-01', 'Salary'),
(18, 5, 890.00, '2025-06-23', 'Refund'),
(18, 3, 450.00, '2025-06-28', 'Interest payment'),

(19, 2, 15500.00, '2025-06-09', 'Freelance income'),
(19, 1, 66000.00, '2025-06-01', 'Salary'),
(19, 3, 510.00, '2025-06-29', 'Bank interest'),

(20, 1, 71000.00, '2025-06-01', 'Monthly salary'),
(20, 2, 14000.00, '2025-06-13', 'Freelancing job'),
(20, 5, 870.00, '2025-06-25', 'E-commerce refund'),


(21, 1, 67000.00, '2025-06-01', 'Monthly salary'),
(21, 2, 14500.00, '2025-06-11', 'Freelance gig payment'),
(21, 4, 305.00, '2025-06-28', 'Dividend credited'),

(22, 1, 72000.00, '2025-06-01', 'Regular salary'),
(22, 3, 510.00, '2025-06-25', 'Bank interest'),
(22, 5, 950.00, '2025-06-17', 'Travel refund'),

(23, 2, 16000.00, '2025-06-08', 'Freelancing income'),
(23, 1, 70000.00, '2025-06-01', 'Salary payment'),
(23, 3, 430.00, '2025-06-27', 'Interest from savings'),

(24, 1, 75000.00, '2025-06-01', 'Monthly salary'),
(24, 5, 900.00, '2025-06-19', 'Refund processed'),
(24, 2, 13500.00, '2025-06-13', 'Freelance billing'),

(25, 1, 78000.00, '2025-06-01', 'Salary received'),
(25, 2, 14000.00, '2025-06-10', 'Freelance development'),
(25, 4, 295.00, '2025-06-29', 'Dividend credited'),

(26, 1, 71000.00, '2025-06-01', 'Company salary'),
(26, 3, 470.00, '2025-06-23', 'Interest earned'),
(26, 5, 850.00, '2025-06-15', 'Refund credited'),

(27, 1, 74000.00, '2025-06-01', 'Salary deposit'),
(27, 2, 12500.00, '2025-06-14', 'Freelance job'),
(27, 3, 500.00, '2025-06-26', 'Savings interest'),

(28, 1, 73000.00, '2025-06-01', 'Monthly salary'),
(28, 4, 315.00, '2025-06-09', 'Dividends received'),
(28, 2, 11500.00, '2025-06-16', 'Freelance article writing'),

(29, 1, 69000.00, '2025-06-01', 'Salary'),
(29, 5, 890.00, '2025-06-21', 'Refund credited'),
(29, 3, 450.00, '2025-06-28', 'Interest income'),

(30, 2, 15500.00, '2025-06-12', 'Freelance website'),
(30, 1, 66000.00, '2025-06-01', 'Company salary'),
(30, 3, 480.00, '2025-06-30', 'Bank interest'),

(31, 1, 72000.00, '2025-06-01', 'Regular salary'),
(31, 2, 13200.00, '2025-06-11', 'Freelance commission'),
(31, 5, 950.00, '2025-06-20', 'Refund transfer'),

(32, 1, 70000.00, '2025-06-01', 'Salary'),
(32, 3, 460.00, '2025-06-27', 'Interest earned'),
(32, 2, 14500.00, '2025-06-15', 'Freelance writing'),

(33, 2, 13800.00, '2025-06-13', 'Freelance app development'),
(33, 1, 73000.00, '2025-06-01', 'Company salary'),
(33, 5, 870.00, '2025-06-19', 'Refund return'),

(34, 1, 69000.00, '2025-06-01', 'Monthly salary'),
(34, 2, 12500.00, '2025-06-10', 'Freelance income'),
(34, 3, 495.00, '2025-06-25', 'Interest credit'),

(35, 1, 68000.00, '2025-06-01', 'Salary income'),
(35, 4, 320.00, '2025-06-09', 'Dividend income'),
(35, 2, 15000.00, '2025-06-14', 'Freelance project'),

(36, 2, 14500.00, '2025-06-13', 'Freelancing payment'),
(36, 1, 72000.00, '2025-06-01', 'Regular salary'),
(36, 5, 930.00, '2025-06-18', 'Online refund'),

(37, 1, 75000.00, '2025-06-01', 'Company salary'),
(37, 3, 510.00, '2025-06-24', 'Interest payout'),
(37, 2, 13500.00, '2025-06-15', 'Freelance contract'),

(38, 1, 70000.00, '2025-06-01', 'Salary payment'),
(38, 4, 310.00, '2025-06-07', 'Dividend credited'),
(38, 2, 14800.00, '2025-06-16', 'Freelancing service'),

(39, 1, 67000.00, '2025-06-01', 'Salary'),
(39, 5, 890.00, '2025-06-23', 'Customer refund'),
(39, 2, 14000.00, '2025-06-12', 'Freelance income'),

(40, 2, 13000.00, '2025-06-10', 'Freelance website'),
(40, 1, 74000.00, '2025-06-01', 'Salary'),
(40, 3, 520.00, '2025-06-27', 'Interest'),

(41, 1, 71000.00, '2025-06-01', 'Salary deposit'),
(41, 2, 14200.00, '2025-06-14', 'Freelancing job'),
(41, 4, 300.00, '2025-06-30', 'Dividend payment'),

(42, 1, 69000.00, '2025-06-01', 'Company salary'),
(42, 5, 850.00, '2025-06-20', 'Travel refund'),
(42, 2, 13400.00, '2025-06-16', 'Freelance writing'),

(43, 1, 72000.00, '2025-06-01', 'Monthly salary'),
(43, 3, 500.00, '2025-06-25', 'Interest earned'),
(43, 2, 14700.00, '2025-06-11', 'Freelance graphic work'),

(44, 2, 12000.00, '2025-06-08', 'Freelancing client job'),
(44, 1, 70000.00, '2025-06-01', 'Salary'),
(44, 5, 910.00, '2025-06-22', 'Refund credited'),

(45, 1, 76000.00, '2025-06-01', 'Salary received'),
(45, 2, 15000.00, '2025-06-10', 'Freelance branding'),
(45, 4, 330.00, '2025-06-28', 'Dividend from stocks'),

(46, 1, 73000.00, '2025-06-01', 'Regular salary'),
(46, 3, 470.00, '2025-06-29', 'Interest credited'),
(46, 2, 13900.00, '2025-06-12', 'Freelance site design'),

(47, 1, 72000.00, '2025-06-01', 'Monthly salary'),
(47, 2, 13600.00, '2025-06-13', 'Freelance photography'),
(47, 5, 870.00, '2025-06-19', 'Refund for purchase'),

(48, 1, 74000.00, '2025-06-01', 'Salary'),
(48, 4, 295.00, '2025-06-07', 'Dividend deposit'),
(48, 2, 14500.00, '2025-06-14', 'Freelance coding'),

(49, 1, 68000.00, '2025-06-01', 'Salary'),
(49, 2, 12000.00, '2025-06-15', 'Freelance social media'),
(49, 3, 510.00, '2025-06-27', 'Interest from savings'),

(50, 1, 70000.00, '2025-06-01', 'Monthly salary'),
(50, 5, 930.00, '2025-06-21', 'Refund from store'),
(50, 2, 13800.00, '2025-06-10', 'Freelance work');

INSERT INTO Expenses (User_ID, Category_ID, Amount, Expense_Date, Description) VALUES
(1, 6, 1250.50, '2025-01-15', 'Monthly house rent payment'),
(1, 9, 320.75, '2025-02-03', 'Groceries from local mart'),
(1, 12, 75.00, '2025-02-21', 'Movie night with friends'),

(2, 8, 2500.00, '2025-01-22', 'Credit card EMI payment'),
(2, 10, 540.00, '2025-03-11', 'Casual clothes shopping'),
(2, 11, 125.00, '2025-04-10', 'Birthday dinner'),

(3, 6, 1400.00, '2025-01-10', 'Paid monthly apartment rent'),
(3, 7, 650.00, '2025-02-07', 'Electricity and water bills'),
(3, 9, 410.30, '2025-02-18', 'Grocery shopping from Big Bazaar'),

(4, 10, 899.99, '2025-01-25', 'Bought shoes and T-shirt'),
(4, 12, 150.00, '2025-03-05', 'Watched new release at PVR'),
(4, 11, 260.00, '2025-03-21', 'Lunch with college friends'),

(5, 7, 125.20, '2025-01-15', 'Mobile recharge and internet'),
(5, 9, 300.00, '2025-02-02', 'Monthly grocery essentials'),
(5, 6, 1350.00, '2025-02-10', 'Flat rent paid'),

(6, 6, 1400.00, '2025-01-05', 'Flat rent for January'),
(6, 9, 390.25, '2025-01-28', 'Weekly groceries'),
(6, 11, 180.00, '2025-02-15', 'Stand-up comedy ticket'),

(7, 7, 220.50, '2025-02-10', 'Electricity and water bills'),
(7, 10, 650.00, '2025-03-01', 'New jeans and sneakers'),
(7, 12, 120.00, '2025-03-20', 'Dinner with roommate'),

(8, 8, 2100.00, '2025-01-18', 'Loan EMI installment'),
(8, 9, 470.80, '2025-02-04', 'Household groceries'),
(8, 11, 130.00, '2025-02-28', 'Watched cricket match live'),

(9, 6, 1350.00, '2025-01-07', 'House rent paid'),
(9, 9, 305.00, '2025-01-21', 'Groceries for week'),
(9, 10, 780.00, '2025-02-13', 'Clothing and accessories'),

(10, 7, 310.25, '2025-01-12', 'Utility payments'),
(10, 11, 240.00, '2025-01-27', 'Concert night'),
(10, 12, 180.00, '2025-02-14', 'Valentine’s day dinner'),

(11, 6, 1500.00, '2025-02-01', 'Monthly rent transfer'),
(11, 10, 399.00, '2025-02-18', 'Online shopping'),
(11, 12, 200.00, '2025-03-05', 'Fast food and drinks'),

(12, 8, 2800.00, '2025-01-11', 'Car loan EMI'),
(12, 7, 175.00, '2025-01-25', 'Gas and power bill'),
(12, 9, 450.00, '2025-02-02', 'Monthly groceries'),

(13, 6, 1200.00, '2025-01-08', 'Room rent'),
(13, 9, 290.75, '2025-02-08', 'Essentials from grocery'),
(13, 11, 190.00, '2025-02-22', 'Funfair entry & snacks'),

(14, 7, 350.60, '2025-01-19', 'Mobile + broadband'),
(14, 10, 880.00, '2025-02-10', 'New shirts and trousers'),
(14, 12, 230.00, '2025-03-12', 'Street food and dessert'),

(15, 6, 1300.00, '2025-01-15', 'Flat rent'),
(15, 9, 410.00, '2025-01-30', 'Kitchen and home groceries'),
(15, 11, 175.00, '2025-02-24', 'Movie and drinks'),

(16, 8, 2200.00, '2025-01-20', 'Education loan EMI'),
(16, 9, 395.20, '2025-02-11', 'Supermarket grocery'),
(16, 10, 760.00, '2025-03-01', 'Wardrobe upgrade'),

(17, 6, 1450.00, '2025-01-09', 'Apartment rent paid'),
(17, 7, 280.00, '2025-01-24', 'Postpaid bill and DTH'),
(17, 11, 160.00, '2025-02-18', 'Comedy show ticket'),

(18, 6, 1100.00, '2025-01-05', 'Paying room rent'),
(18, 9, 310.50, '2025-01-29', 'Groceries at DMart'),
(18, 12, 180.00, '2025-03-10', 'Eating out'),

(19, 10, 980.00, '2025-01-23', 'Bought hoodie and jeans'),
(19, 9, 355.00, '2025-02-03', 'Weekly groceries'),
(19, 11, 220.00, '2025-03-19', 'Amusement park visit'),

(20, 6, 1400.00, '2025-01-14', 'Rent to landlord'),
(20, 7, 310.00, '2025-02-06', 'Electricity + Wi-Fi bills'),
(20, 12, 165.00, '2025-03-22', 'Fast food cravings'),


(21, 8, 2700.00, '2025-01-17', 'Home loan EMI'),
(21, 9, 435.90, '2025-02-15', 'Daily needs'),
(21, 10, 520.00, '2025-03-04', 'Footwear and bag'),

(22, 6, 1250.00, '2025-01-06', 'Rent for PG'),
(22, 9, 315.00, '2025-02-01', 'Household needs'),
(22, 11, 205.00, '2025-03-18', 'IPL match ticket'),

(23, 10, 799.00, '2025-01-30', 'T-shirt and jeans'),
(23, 7, 265.00, '2025-02-08', 'Recharge and gas bill'),
(23, 12, 185.00, '2025-03-06', 'Dinner with friends'),

(24, 6, 1350.00, '2025-01-09', 'Room rent'),
(24, 9, 425.00, '2025-02-17', 'Groceries and fruits'),
(24, 11, 210.00, '2025-03-13', 'Dance performance ticket'),

(25, 8, 2500.00, '2025-01-22', 'Bike EMI'),
(25, 9, 330.00, '2025-02-14', 'Monthly ration'),
(25, 10, 570.00, '2025-03-09', 'Sportswear purchase'),

(26, 6, 1200.00, '2025-01-04', 'Monthly rent'),
(26, 7, 305.50, '2025-01-28', 'Electricity + mobile bill'),
(26, 12, 160.00, '2025-03-01', 'Street food outing'),

(27, 6, 1400.00, '2025-01-12', 'Apartment rent'),
(27, 9, 385.00, '2025-02-02', 'Groceries at More'),
(27, 11, 175.00, '2025-03-05', 'Movie + snacks'),

(28, 7, 270.00, '2025-01-20', 'Internet + light bills'),
(28, 10, 650.00, '2025-02-20', 'Apparel shopping'),
(28, 12, 140.00, '2025-03-22', 'Fast food dinner'),

(29, 6, 1300.00, '2025-01-14', 'Rent payment'),
(29, 8, 2300.00, '2025-01-30', 'Loan repayment'),
(29, 9, 460.00, '2025-02-10', 'Grocery list'),

(30, 6, 1150.00, '2025-01-11', 'Flat rent'),
(30, 9, 390.00, '2025-01-27', 'Groceries for hostel'),
(30, 11, 195.00, '2025-02-21', 'Event pass'),

(31, 7, 2315.75, '2025-05-06', 'Subscription charges for online services'),
(31, 9, 5450.25, '2025-04-21', 'Dinner and groceries'),
(31, 11, 830.00, '2025-06-12', 'Bus pass and short cab trips'),

(32, 6, 4120.00, '2025-03-15', 'Monthly rent payment'),
(32, 10, 1270.50, '2025-05-22', 'Movie night and outings'),
(32, 12, 3200.75, '2025-04-09', 'Online shopping spree'),

(33, 8, 699.99, '2025-02-25', 'Minor medical check-up'),
(33, 6, 4100.00, '2025-04-01', 'House rent'),
(33, 10, 999.50, '2025-05-18', 'Amusement park tickets'),

(34, 11, 1200.75, '2025-03-05', 'Metro and cab charges'),
(34, 7, 3300.20, '2025-04-17', 'Grocery and snacks'),
(34, 12, 2100.00, '2025-05-25', 'Online store purchases'),

(35, 6, 4600.00, '2025-04-28', 'House rent'),
(35, 8, 875.00, '2025-06-01', 'Dental consultation'),
(35, 10, 1100.00, '2025-03-20', 'Movie subscriptions'),

(36, 9, 2400.00, '2025-05-05', 'Cafeteria and takeout'),
(36, 12, 3400.99, '2025-04-10', 'Ecommerce purchases'),
(36, 11, 1050.75, '2025-06-18', 'Local transport expenses'),

(37, 7, 4100.50, '2025-05-12', 'Weekly groceries'),
(37, 6, 4750.00, '2025-03-29', 'Flat rent'),
(37, 10, 1320.00, '2025-06-08', 'Streaming apps and movies'),

(38, 8, 950.00, '2025-04-04', 'Pharmacy bills'),
(38, 9, 2850.75, '2025-05-14', 'Restaurant dine out'),
(38, 12, 2999.99, '2025-06-01', 'Online marketplace'),

(39, 6, 5200.00, '2025-02-20', 'Monthly apartment rent'),
(39, 7, 1350.25, '2025-04-15', 'Fruits and vegetables'),
(39, 11, 780.00, '2025-05-21', 'Shared ride services'),

(40, 10, 900.00, '2025-03-19', 'Weekend movie plans'),
(40, 12, 3850.55, '2025-04-22', 'Fashion and lifestyle'),
(40, 8, 1299.99, '2025-06-03', 'Eye check-up'),

(41, 6, 4550.00, '2025-05-01', 'Flat rent'),
(41, 7, 1780.45, '2025-04-04', 'Monthly groceries'),
(41, 9, 2450.00, '2025-06-16', 'Cafe and fast food'),

(42, 8, 1099.99, '2025-05-08', 'Health insurance'),
(42, 10, 980.00, '2025-04-18', 'Movie tickets and snacks'),
(42, 12, 3199.00, '2025-03-11', 'Apparel purchase'),

(43, 6, 4980.00, '2025-04-25', 'Home rental fee'),
(43, 11, 880.50, '2025-05-29', 'Local transport'),
(43, 7, 3050.00, '2025-03-30', 'Monthly groceries'),

(44, 9, 2150.25, '2025-04-12', 'Dining out'),
(44, 12, 4020.75, '2025-05-26', 'Online purchases'),
(44, 6, 4800.00, '2025-03-20', 'Apartment rent'),

(45, 8, 1220.99, '2025-06-09', 'Medical test'),
(45, 10, 975.00, '2025-05-13', 'Subscription-based apps'),
(45, 7, 2899.00, '2025-04-02', 'Grocery purchases'),

(46, 6, 5300.00, '2025-04-05', 'Monthly house rent'),
(46, 9, 2150.75, '2025-05-10', 'Hotel and food'),
(46, 12, 3760.00, '2025-06-15', 'Tech gadgets'),

(47, 7, 3450.60, '2025-03-21', 'Supermarket shopping'),
(47, 11, 670.25, '2025-05-01', 'Metro recharge'),
(47, 10, 1230.40, '2025-06-07', 'Online music and OTT'),

(48, 6, 4950.00, '2025-04-08', 'Room rent payment'),
(48, 8, 1055.99, '2025-05-19', 'Health check-up'),
(48, 12, 2990.25, '2025-06-12', 'Electronics shopping'),

(49, 6, 1280.00, '2025-01-16', 'House rent payment'),
(49, 10, 720.00, '2025-02-05', 'Shopping at mall'),
(49, 12, 175.00, '2025-03-16', 'Café visit after class'),

(50, 7, 520.50, '2025-02-14', 'Recharge and OTT subscriptions'),
(50, 9, 410.00, '2025-03-05', 'Grocery run to supermarket'),
(50, 11, 215.00, '2025-03-28', 'Birthday celebration at cafe');

SELECT 
    u.User_ID,
    u.Name,
    DATE_FORMAT(e.Expense_Date, '%Y-%m') AS Month,
    SUM(e.Amount) AS Total_Monthly_Expenses
FROM 
    Expenses e
JOIN Users u ON e.User_ID = u.User_ID
GROUP BY u.User_ID, Month
ORDER BY u.User_ID, Month;

SELECT 
    u.User_ID,
    u.Name,
    c.Category_Name,
    DATE_FORMAT(e.Expense_Date, '%Y-%m') AS Month,
    SUM(e.Amount) AS Category_Total
FROM 
    Expenses e
JOIN Users u ON e.User_ID = u.User_ID
JOIN Categories c ON e.Category_ID = c.Category_ID
WHERE c.Type = 'Expense'
GROUP BY u.User_ID, c.Category_Name, Month
ORDER BY u.User_ID, Month;

CREATE VIEW User_Balance AS
SELECT 
    u.User_ID,
    u.Name,
    IFNULL(SUM(i.Amount), 0) AS Total_Income,
    IFNULL(SUM(e.Amount), 0) AS Total_Expense,
    IFNULL(SUM(i.Amount), 0) - IFNULL(SUM(e.Amount), 0) AS Balance
FROM Users u
LEFT JOIN Income i ON u.User_ID = i.User_ID
LEFT JOIN Expenses e ON u.User_ID = e.User_ID
GROUP BY u.User_ID;

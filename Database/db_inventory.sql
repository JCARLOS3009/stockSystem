-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 09:20 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `STRT` varchar(30) NOT NULL,
  `END` varchar(30) NOT NULL,
  `INCREMENT` int(11) NOT NULL,
  `DESCRIPTION` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `STRT`, `END`, `INCREMENT`, `DESCRIPTION`) VALUES
(1, '00001', '14', 1, 'Customer'),
(3, '20122', '8', 1, 'Suplier'),
(4, '32302', '15', 1, 'StockIn'),
(5, '102201', '26', 1, 'StockOut'),
(6, '53132', '25', 1, 'StockReturn'),
(7, '0000', '5', 1, 'itemid'),
(17, 'A0000', '4', 1, 'Accessories'),
(18, 'H0000', '1', 1, 'Hose'),
(19, 'P0000', '5', 1, 'PIPE'),
(20, 'M0000', '11', 1, 'MOTORS MACHINE'),
(21, 'B0000', '4', 1, 'BELT'),
(22, 'A0000', '19', 1, 'ACCESORIES'),
(23, 'B0000', '1', 1, 'BOLT');

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `ITEMID` varchar(30) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `DESCRIPTION` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `PRICE` double NOT NULL,
  `QTY` int(11) NOT NULL,
  `UNIT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`ITEMID`, `NAME`, `DESCRIPTION`, `TYPE`, `PRICE`, `QTY`, `UNIT`) VALUES
('A000010', 'Piston Ring "Yamana"', 'Motor Parts', 'ACCESORIES', 350, 339, 'box'),
('A000011', 'Nut Lack', 'Motor Parts', 'ACCESORIES', 45, 291, 'pcs.'),
('A000012', 'Fly Wheel Nut', 'Motor Parts', 'ACCESORIES', 100, 384, 'pcs.'),
('A000013', 'Nut Lack', 'Motor Parts', 'ACCESORIES', 45, 195, 'kilo'),
('A000014', 'Tapelone', 'Motor Parts', 'ACCESORIES', 150, 40, 'box'),
('A000015', 'Main Bering', 'Motor Parts', 'ACCESORIES', 350, 200, 'box'),
('A000016', 'Con. Rod', 'Motor Parts', 'ACCESORIES', 150, 250, 'box'),
('A000017', 'Bolt', 'Motor Bolt', 'ACCESORIES', 50, 394, 'kilo'),
('A000018', 'Valve Spring', 'Motor Parts', 'ACCESORIES', 250, 300, 'box'),
('A00002', 'Fuel Tank', 'Motor Tank', 'ACCESORIES', 350, 30, 'box'),
('A00003', 'Nozzle Tip', 'Motor Tool', 'ACCESORIES', 50, 50, 'box'),
('A00004', 'Oil Filter', 'Motor Tool', 'ACCESORIES', 40, 50, 'box'),
('A00005', 'Fan Blade', 'Motor Fan', 'ACCESORIES', 250, 15, 'box'),
('A00006', 'Nut', 'Motor parts', 'ACCESORIES', 25, 400, 'pcs.'),
('A00007', 'Fly Wheel Nut', 'Motor Part', 'ACCESORIES', 50, 198, 'pcs.'),
('A00008', 'Oil Dip Stick', 'Motor Tool ', 'ACCESORIES', 40, 49, 'box'),
('A00009', 'Cylinder Head Gasket', 'Motor Parts', 'ACCESORIES', 150, 99, 'box'),
('B00001', 'Fujibelt', 'Motor Belt', 'BELT', 250, 55, 'pcs.'),
('B00002', 'Bandbelt', 'Motor Belt ', 'BELT', 300, 57, 'pcs.'),
('B00003', 'Mitsubishibelt', 'Motor Belt', 'BELT', 350, 65, 'pcs.'),
('M00001', 'Power Spry', 'water spry', 'MOTORS MACHINE', 2000, 60, 'pcs.'),
('M000010', 'Electric Motor', 'Machine', 'MOTORS MACHINE', 2000, 95, 'pcs.'),
('M00002', 'Water Cool', 'water machine', 'MOTORS MACHINE', 2500, 109, 'pcs.'),
('M00003', 'Air Cool', 'Air exit', 'MOTORS MACHINE', 3000, 45, 'pcs.'),
('M00004', 'Electecal Water Pump', 'water spry', 'MOTORS MACHINE', 4500, 47, 'pcs.'),
('M00005', 'Wilding Machine', '200AMPS OR 300 AMPS', 'MOTORS MACHINE', 10000, 40, 'pcs.'),
('M00006', 'Gasoline Engine', 'Power Engine', 'MOTORS MACHINE', 10500, 40, 'pcs.'),
('M00007', 'Water Pump', 'YAMMA MACHINE', 'MOTORS MACHINE', 10000, 40, 'pcs.'),
('M00008', 'Grass Cutter', 'YAMAHA POWER', 'MOTORS MACHINE', 15000, 30, 'pcs.'),
('M00009', 'P.U.T Bulb', 'FireFly ', 'MOTORS MACHINE', 5000, 30, 'pcs.'),
('P00001', 'Piting Pipe', 'Long pipe', 'PIPE', 1200, 30, 'meter'),
('P00002', 'Adapter Pipe', 'Short Pipe', 'PIPE', 100, 49, 'pcs.'),
('P00003', 'T Pipe', 'Plastic Pipe', 'PIPE', 100, 49, 'pcs.'),
('P00004', 'G.I Piting', 'Long Pipe', 'PIPE', 250, 29, 'pcs.');

-- --------------------------------------------------------

--
-- Table structure for table `tblperson`
--

CREATE TABLE `tblperson` (
  `ID` int(11) NOT NULL,
  `SUPLIERCUSTOMERID` varchar(90) DEFAULT NULL,
  `FIRSTNAME` varchar(90) DEFAULT NULL,
  `LASTNAME` varchar(90) DEFAULT NULL,
  `ADDRESS` varchar(90) DEFAULT NULL,
  `TELEPHONE` varchar(30) DEFAULT NULL,
  `MOBILE` varchar(30) DEFAULT NULL,
  `TYPE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblperson`
--

INSERT INTO `tblperson` (`ID`, `SUPLIERCUSTOMERID`, `FIRSTNAME`, `LASTNAME`, `ADDRESS`, `TELEPHONE`, `MOBILE`, `TYPE`) VALUES
(4, '000011', 'Jude', 'Reyes', 'Bacolod City', '444114', '09000000000', 'Customer'),
(5, '000013', 'Adones', 'Evangelista', 'Kabankalan City', '4500024', '09000000000', 'Customer'),
(7, '000015', 'Nico', 'Raluto', 'Himamaylan City', '499855', '09000000000', 'Customer'),
(8, '000016', 'Grace', 'Patulada', 'Binalbagan', '4799878', '09000000000', 'Customer'),
(9, '000019', 'Prince', 'King', 'Hinigaran', '471822', '09000000000', 'Customer'),
(10, '0000110', 'Juanito', 'Banana', 'Ilog', '', '09000000000', 'Customer'),
(11, '0000111', 'Kimmy', 'Mama', 'Binalbagan', '', '09000000000', 'Customer'),
(12, '0000112', 'Jezah', 'LIma', 'Sipalay', '', '09000000000', 'Customer'),
(13, '0000113', 'Mark', 'Jason', 'Bacolod City', '', '09000000000', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `tblsettings`
--

CREATE TABLE `tblsettings` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `PARA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsettings`
--

INSERT INTO `tblsettings` (`ID`, `DESCRIPTION`, `PARA`) VALUES
(2, 'pcs.', 'Unit'),
(3, 'box', 'Unit'),
(6, 'PIPE', 'Category'),
(7, 'MOTORS MACHINE', 'Category'),
(8, 'BELT', 'Category'),
(9, 'ACCESORIES', 'Category'),
(10, 'BOLT', 'Category'),
(11, '', 'Category'),
(13, 'meter', 'Unit'),
(14, 'kilo', 'Unit');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_in_out`
--

CREATE TABLE `tblstock_in_out` (
  `STOCKOUTID` int(11) NOT NULL,
  `TRANSACTIONNUMBER` varchar(30) NOT NULL,
  `ITEMID` varchar(30) NOT NULL,
  `TRANSACTIONDATE` date NOT NULL,
  `QTY` int(11) NOT NULL,
  `TOTALPRICE` double NOT NULL,
  `SUPLIERCUSTOMERID` varchar(30) NOT NULL,
  `REMARKS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_return`
--

CREATE TABLE `tblstock_return` (
  `STOCKRETURNID` int(11) NOT NULL,
  `STOCKRETURNNUMBER` varchar(30) NOT NULL,
  `ITEMID` varchar(30) NOT NULL,
  `RETURNDATE` date NOT NULL,
  `QTY` int(11) NOT NULL,
  `TOTALPRICE` double NOT NULL,
  `OWNER_CUS_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsuplier`
--

CREATE TABLE `tblsuplier` (
  `ID` int(11) NOT NULL,
  `SUPLIERID` varchar(90) DEFAULT NULL,
  `FIRSTNAME` varchar(90) DEFAULT NULL,
  `LASTNAME` varchar(90) DEFAULT NULL,
  `ADDRESS` varchar(90) DEFAULT NULL,
  `TELEPHONE` varchar(30) DEFAULT NULL,
  `MOBILE` varchar(30) DEFAULT NULL,
  `TYPE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsuplier`
--

INSERT INTO `tblsuplier` (`ID`, `SUPLIERID`, `FIRSTNAME`, `LASTNAME`, `ADDRESS`, `TELEPHONE`, `MOBILE`, `TYPE`) VALUES
(5, '20201223', 'Janry', 'Tano', 'Kab. city', '44-55-5555', '09496585632', 'SUPLIER');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaction`
--

CREATE TABLE `tbltransaction` (
  `STOCKINID` int(11) NOT NULL,
  `TRANSACTIONNUMBER` varchar(30) DEFAULT NULL,
  `TRANSACTIONDATE` date NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `SUPLIERCUSTOMERID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaction`
--

INSERT INTO `tbltransaction` (`STOCKINID`, `TRANSACTIONNUMBER`, `TRANSACTIONDATE`, `TYPE`, `SUPLIERCUSTOMERID`) VALUES
(1, '4908731', '2015-02-25', 'StockOut', '1220117'),
(2, '1022011', '2015-02-25', 'StockOut', '000011'),
(3, '4908731', '2015-02-25', 'Returned', '1220117'),
(4, '1022011', '2015-02-25', 'Returned', '11'),
(5, '4908731', '2015-02-25', 'Returned', '1220117'),
(6, '4908731', '2015-02-25', 'Returned', '1220117'),
(7, '1022012', '2015-02-25', 'StockOut', '000011'),
(8, '1022012', '2015-02-25', 'Returned', '11'),
(9, '1022013', '2015-02-25', 'StockOut', '000011'),
(10, '1022014', '2015-02-25', 'StockOut', '1220117'),
(11, '1022015', '2015-02-25', 'StockOut', '000011'),
(12, '1022016', '2015-02-25', 'StockOut', '000016'),
(13, '1022017', '2015-02-26', 'StockOut', '000016'),
(14, '1022018', '2015-02-26', 'StockOut', '000013'),
(15, '1022019', '2015-02-26', 'StockOut', '0000110'),
(16, '1022019', '2015-02-26', 'Returned', '110'),
(17, '10220110', '2015-02-26', 'StockOut', '000019'),
(18, '10220110', '2015-02-26', 'Returned', '19'),
(19, '10220111', '2015-02-26', 'StockOut', '000011'),
(20, '10220112', '2015-02-26', 'StockOut', '000013'),
(21, '10220112', '2015-02-26', 'Returned', '13'),
(22, '10220113', '2015-02-26', 'StockOut', '0000112'),
(23, '10220114', '2015-02-26', 'StockOut', '0000113'),
(24, '10220115', '2015-02-26', 'StockOut', '0000111'),
(25, '10220116', '2015-02-26', 'StockOut', '0000112'),
(26, '10220117', '2015-02-27', 'StockOut', '0000112'),
(27, '10220117', '2015-02-27', 'Returned', '112'),
(28, '10220118', '2019-01-06', 'StockOut', '000016'),
(29, '10220111', '2019-01-06', 'Returned', '11'),
(30, '10220119', '2021-02-22', 'StockOut', '1022017'),
(31, '10220120', '2021-02-22', 'StockOut', '000011'),
(32, '10220121', '2021-02-22', 'StockOut', '000019'),
(33, '10220122', '2021-02-22', 'StockOut', '000016'),
(34, '10220123', '2021-02-22', 'StockOut', '000011'),
(35, '10220123', '2021-02-22', 'Returned', '000011'),
(36, '10220124', '2021-02-22', 'StockOut', '000011'),
(37, '10220125', '2021-02-22', 'StockOut', '000011'),
(38, '10220125', '2021-02-22', 'Returned', '000011');

-- --------------------------------------------------------

--
-- Table structure for table `tblvendor`
--

CREATE TABLE `tblvendor` (
  `VENDORID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(90) DEFAULT NULL,
  `user_name` varchar(90) DEFAULT NULL,
  `pass` varchar(90) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `user_name`, `pass`, `type`) VALUES
(1, 'paul Arroz', 'paul', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(3, 'cedrex', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`ITEMID`);

--
-- Indexes for table `tblperson`
--
ALTER TABLE `tblperson`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CUSID` (`SUPLIERCUSTOMERID`);

--
-- Indexes for table `tblsettings`
--
ALTER TABLE `tblsettings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstock_in_out`
--
ALTER TABLE `tblstock_in_out`
  ADD PRIMARY KEY (`STOCKOUTID`);

--
-- Indexes for table `tblstock_return`
--
ALTER TABLE `tblstock_return`
  ADD PRIMARY KEY (`STOCKRETURNID`);

--
-- Indexes for table `tblsuplier`
--
ALTER TABLE `tblsuplier`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SUPID` (`SUPLIERID`);

--
-- Indexes for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  ADD PRIMARY KEY (`STOCKINID`);

--
-- Indexes for table `tblvendor`
--
ALTER TABLE `tblvendor`
  ADD PRIMARY KEY (`VENDORID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tblperson`
--
ALTER TABLE `tblperson`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tblsettings`
--
ALTER TABLE `tblsettings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tblstock_in_out`
--
ALTER TABLE `tblstock_in_out`
  MODIFY `STOCKOUTID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblstock_return`
--
ALTER TABLE `tblstock_return`
  MODIFY `STOCKRETURNID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsuplier`
--
ALTER TABLE `tblsuplier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tblvendor`
--
ALTER TABLE `tblvendor`
  MODIFY `VENDORID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

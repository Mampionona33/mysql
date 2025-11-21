-- Table des clients
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    nom_client VARCHAR(100),
    territoire_id INT,
    email VARCHAR(100),
    ville VARCHAR(50)
);

-- Table des commerciaux
CREATE TABLE commerciaux (
    commercial_id INT PRIMARY KEY,
    nom_commercial VARCHAR(100),
    region VARCHAR(50),
    email VARCHAR(100)
);

-- Table des commandes
CREATE TABLE commandes (
    commande_id INT PRIMARY KEY,
    numero_commande VARCHAR(20),
    commercial_id INT,
    date_commande DATE,
    client_id INT,
    territoire_id INT,
    sous_total DECIMAL(10,2),
    taxe DECIMAL(10,2),
    frais_livraison DECIMAL(10,2),
    total_due DECIMAL(10,2),
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (commercial_id) REFERENCES commerciaux(commercial_id)
);

-- Données clients
INSERT INTO clients (client_id, nom_client, territoire_id, email, ville) VALUES
(29825, 'Andriamatoa Rabe', 5, 'rabe@example.com', 'Toamasina'),
(29672, 'Mme Rasoa', 5, 'rasoa@example.com', 'Antananarivo'),
(29661, 'M. Rakoto', 5, 'rakoto@example.com', 'Fianarantsoa'),
(29912, 'Mme Hanitra', 5, 'hanitra@example.com', 'Mahajanga'),
(30084, 'M. Jean', 5, 'jean@example.com', 'Antsirabe'),
(29549, 'Mme Lala', 5, 'lala@example.com', 'Toliara'),
(29958, 'M. Hery', 5, 'hery@example.com', 'Toamasina'),
(29849, 'Mme Vero', 5, 'vero@example.com', 'Antananarivo'),
(30000, 'M. Solo', 5, 'solo@example.com', 'Fianarantsoa'),
(29749, 'Mme Kanto', 5, 'kanto@example.com', 'Mahajanga'),
(29945, 'M. Zo', 5, 'zo@example.com', 'Antsirabe');

-- Données commerciaux
INSERT INTO commerciaux (commercial_id, nom_commercial, region, email) VALUES
(279, 'Tsanta Ramahazomanana', 'Atsinanana', 'tsanta@penta.mg'),
(280, 'Mampionona', 'Analamanga', 'mampionona@penta.mg');

-- Données commandes (30 lignes)
INSERT INTO commandes (commande_id, numero_commande, commercial_id, date_commande, client_id, territoire_id, sous_total, taxe, frais_livraison, total_due) VALUES
(43659, 'SO43659', 279, '2025-10-01', 29825, 5, 20565.62, 1971.51, 616.10, 23153.23),
(43660, 'SO43660', 279, '2025-10-01', 29672, 5, 1294.25, 124.25, 38.83, 1457.33),
(43681, 'SO43681', 279, '2025-10-01', 29661, 5, 13787.54, 1233.07, 413.46, 15534.07),
(43684, 'SO43684', 279, '2025-10-01', 29912, 5, 5596.47, 537.26, 167.89, 6301.63),
(43685, 'SO43685', 279, '2025-10-01', 30084, 5, 2736.57, 263.20, 82.23, 3083.00),
(43694, 'SO43694', 279, '2025-10-01', 29549, 5, 20645.63, 1978.33, 618.23, 23242.19),
(43695, 'SO43695', 279, '2025-10-01', 29958, 5, 39373.78, 3787.46, 1183.58, 44344.83),
(43696, 'SO43696', 279, '2025-10-01', 29849, 5, 419.46, 20.27, 12.58, 452.31),
(43845, 'SO43845', 279, '2025-10-02', 30000, 5, 8580.07, 823.67, 257.36, 9661.10),
(43861, 'SO43861', 279, '2025-10-02', 29749, 5, 23401.11, 2244.41, 701.38, 26346.89),
(43862, 'SO43862', 279, '2025-10-02', 29945, 5, 31000.78, 2987.87, 933.71, 34922.36),
(43863, 'SO43863', 280, '2025-10-03', 29825, 5, 15000.00, 1425.00, 450.00, 16875.00),
(43864, 'SO43864', 280, '2025-10-03', 29672, 5, 1200.00, 114.00, 36.00, 1350.00),
(43865, 'SO43865', 280, '2025-10-03', 29661, 5, 8000.00, 760.00, 240.00, 9000.00),
(43866, 'SO43866', 280, '2025-10-03', 29912, 5, 9500.00, 902.50, 285.00, 10687.50),
(43867, 'SO43867', 280, '2025-10-03', 30084, 5, 3000.00, 285.00, 90.00, 3375.00),
(43868, 'SO43868', 280, '2025-10-03', 29549, 5, 18000.00, 1710.00, 540.00, 20250.00),
(43869, 'SO43869', 280, '2025-10-03', 29958, 5, 25000.00, 2375.00, 750.00, 28125.00),
(43870, 'SO43870', 280, '2025-10-03', 29849, 5, 600.00, 57.00, 18.00, 675.00),
(43871, 'SO43871', 280, '2025-10-04', 30000, 5, 10000.00, 950.00, 300.00, 11250.00),
(43872, 'SO43872', 280, '2025-10-04', 29749, 5, 22000.00, 2090.00, 660.00, 24750.00),
(43873, 'SO43873', 280, '2025-10-04', 29945, 5, 27000.00, 2565.00, 810.00, 30375.00),
(43874, 'SO43874', 280, '2025-10-04', 29825, 5, 16000.00, 1520.00, 480.00, 17900.00),
(43875, 'SO43875', 280, '2025-10-04', 29672, 5, 1100.00, 104.50, 33.00, 1237.50),
(43876, 'SO43876', 280, '2025-10-04', 29661, 5, 7000.00, 665.00, 210.00, 7875.00),
(43877, 'SO43877', 280, '2025-10-04', 29912, 5, 8700.00, 826.50, 261.00, 9787.50),
(43878, 'SO43878', 280, '2025-10-04', 30084, 5, 3200.00, 304.00, 96.00, 3600.00),
(43879, 'SO43879', 280, '2025-10-04', 29549, 5, 19000.00, 1805.00, 570.00, 21375.00),
(43880, 'SO43880', 280, '2025-10-04', 29958, 5, 26000.00, 2470.00, 780.00, 29250.00),
(43881, 'SO43881', 280, '2025-10-04', 29849, 5, 800.00, 76.00, 24.00, 900.00);

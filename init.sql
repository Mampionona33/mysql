-- Table des ventes
CREATE TABLE ventes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    region VARCHAR(50),
    produit VARCHAR(50),
    quantite INT,
    prix_unitaire DECIMAL(10,2)
);

INSERT INTO ventes (date, region, produit, quantite, prix_unitaire) VALUES
('2025-01-01','Toamasina','Jus Mangue',120,2.5),
('2025-01-02','Antananarivo','Jus Orange',200,2.0),
('2025-01-03','Fianarantsoa','Jus Litchi',150,3.0),
('2025-01-04','Toamasina','Jus Banane',180,2.8),
('2025-01-05','Mahajanga','Jus Mangue',90,2.5),
('2025-01-06','Antsirabe','Jus Orange',130,2.0),
('2025-01-07','Toliara','Jus Litchi',160,3.0),
('2025-01-08','Antananarivo','Jus Banane',140,2.8),
('2025-01-09','Toamasina','Jus Mangue',110,2.5),
('2025-01-10','Fianarantsoa','Jus Orange',190,2.0),
('2025-01-11','Mahajanga','Jus Litchi',170,3.0),
('2025-01-12','Antsirabe','Jus Banane',150,2.8),
('2025-01-13','Toliara','Jus Mangue',100,2.5),
('2025-01-14','Antananarivo','Jus Orange',210,2.0),
('2025-01-15','Toamasina','Jus Litchi',130,3.0),
('2025-01-16','Fianarantsoa','Jus Banane',160,2.8),
('2025-01-17','Mahajanga','Jus Mangue',120,2.5),
('2025-01-18','Antsirabe','Jus Orange',180,2.0),
('2025-01-19','Toliara','Jus Litchi',140,3.0),
('2025-01-20','Antananarivo','Jus Banane',170,2.8),
('2025-01-21','Toamasina','Jus Mangue',150,2.5),
('2025-01-22','Fianarantsoa','Jus Orange',160,2.0),
('2025-01-23','Mahajanga','Jus Litchi',190,3.0),
('2025-01-24','Antsirabe','Jus Banane',200,2.8),
('2025-01-25','Toliara','Jus Mangue',130,2.5),
('2025-01-26','Antananarivo','Jus Orange',140,2.0),
('2025-01-27','Toamasina','Jus Litchi',150,3.0),
('2025-01-28','Fianarantsoa','Jus Banane',160,2.8),
('2025-01-29','Mahajanga','Jus Mangue',170,2.5),
('2025-01-30','Antsirabe','Jus Orange',180,2.0);

-- Table des coûts
CREATE TABLE couts (
    produit VARCHAR(50) PRIMARY KEY,
    cout_production DECIMAL(10,2),
    cout_transport DECIMAL(10,2),
    cout_marketing DECIMAL(10,2)
);

INSERT INTO couts (produit, cout_production, cout_transport, cout_marketing) VALUES
('Jus Mangue',1.2,0.3,0.2),
('Jus Orange',1.0,0.25,0.15),
('Jus Litchi',1.5,0.4,0.25),
('Jus Banane',1.3,0.35,0.2);

-- Table des employés
CREATE TABLE employes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    age INT,
    experience INT,
    region_principale VARCHAR(50)
);

INSERT INTO employes (nom, age, experience, region_principale) VALUES
('Alice',28,3,'Toamasina'),
('Bob',35,7,'Antananarivo'),
('Clara',30,5,'Fianarantsoa'),
('David',40,10,'Mahajanga'),
('Eva',32,6,'Antsirabe'),
('Franck',29,4,'Toliara'),
('Gina',34,8,'Toamasina'),
('Hery',31,5,'Antananarivo'),
('Irene',27,2,'Fianarantsoa'),
('Jonas',38,9,'Mahajanga'),
('Kanto',33,6,'Antsirabe'),
('Lova',36,7,'Toliara'),
('Mamy',29,3,'Toamasina'),
('Nina',30,5,'Antananarivo'),
('Olivier',41,11,'Fianarantsoa'),
('Patricia',26,1,'Mahajanga'),
('Quentin',37,8,'Antsirabe'),
('Rina',28,3,'Toliara'),
('Sonia',35,7,'Toamasina'),
('Tiana',32,6,'Antananarivo'),
('Ulrich',30,5,'Fianarantsoa'),
('Valérie',39,10,'Mahajanga'),
('William',33,6,'Antsirabe'),
('Xavier',31,5,'Toliara'),
('Yasmine',27,2,'Toamasina'),
('Zo',36,7,'Antananarivo'),
('Ando',29,4,'Fianarantsoa'),
('Bruno',40,10,'Mahajanga'),
('Cynthia',34,8,'Antsirabe'),
('Dina',30,5,'Toliara');

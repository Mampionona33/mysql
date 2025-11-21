CREATE TABLE ventes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    region VARCHAR(50),
    produit VARCHAR(50),
    quantite INT,
    prix_unitaire DECIMAL(10,2)
);

INSERT INTO ventes (date, region, produit, quantite, prix_unitaire)
VALUES
('2025-01-01', 'Toamasina', 'Jus Mangue', 120, 2.5),
('2025-01-02', 'Antananarivo', 'Jus Orange', 200, 2.0),
('2025-01-03', 'Fianarantsoa', 'Jus Litchi', 150, 3.0);

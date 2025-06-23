-- TABLO TANIMI
CREATE TABLE film (
    film_id INT,
    title VARCHAR(255),
    rental_rate DECIMAL(4,2),
    length INT,
    replacement_cost DECIMAL(5,2)
);

-- VERİ GİRİŞİ
INSERT INTO film VALUES
(1, 'Catwoman', 120, 0.99, 12.99),
(2, 'Courage', 95, 0.99, 18.99),
(3, 'Braveheart', 150, 2.99, 20.99),
(4, 'Canyon Run', 160, 0.99, 15.99),
(5, 'City Rush', 130, 0.99, 12.99),
(6, 'Blade', 160, 4.99, 28.99),
(7, 'Comedy Club', 155, 2.99, 18.99),
(8, 'Chaos', 80, 0.99, 12.99),
(9, 'Crimson Tide', 100, 2.99, 20.99),
(10, 'Campfire', 170, 2.99, 25.99);

-- SORU 1: rental_rate ortalaması
SELECT AVG(rental_rate) FROM film;

-- SORU 2: 'C' ile başlayan film sayısı
SELECT COUNT(*) FROM film
WHERE title LIKE 'C%';

-- SORU 3: rental_rate = 0.99 olan filmlerden en uzun olanın süresi
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

-- SORU 4: length > 150 olan filmlerde kaç farklı replacement_cost var?
SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;

# Exemple d'utilisation MySQL avec Power BI

Ce projet montre comment interroger une base MySQL (`powerbi_demo`) et intégrer les résultats dans Power BI.

---

## 📌 Exemple SQL direct

```sql
SELECT *
FROM commandes
WHERE total_due >= 1000;
```

Cette requête retourne toutes les commandes dont le montant total (`total_due`) est supérieur ou égal à 1000.

---

## 📌 Exemple Power Query (M) avec paramètres

Dans Power BI, on peut rendre la requête dynamique en utilisant des paramètres (`total_due` et `commercial_id`) :

```m
= MySQL.Database(
    "localhost",
    "powerbi_demo",
    [
        ReturnSingleDatabase = true,
        Query =
            "SELECT * FROM commandes
             WHERE total_due >= " & Number.ToText(total_due) &
            " AND commercial_id = " & Number.ToText(commercial_id)
    ]
)
```

### 🔍 Explications

- **`total_due`** : seuil minimum du montant total (paramètre Power BI).
- **`commercial_id`** : identifiant du commercial (paramètre Power BI).
- **`Number.ToText(...)`** : convertit les paramètres numériques en texte pour les insérer correctement dans la requête SQL.

---

## 🚀 Utilisation

1. Crée la base `powerbi_demo` avec tes tables (`commandes`, `clients`, `commerciaux`).
2. Connecte Power BI à MySQL via le connecteur **MySQL Database**.
3. Ajoute des paramètres `total_due` et `commercial_id` dans Power BI.
4. Utilise la requête M ci-dessus pour filtrer dynamiquement tes données.

---

## ✅ Résultat attendu

Tu obtiendras un tableau filtré :

- Toutes les commandes dont `total_due >= total_due_param`.
- Et uniquement celles associées au `commercial_id` choisi.

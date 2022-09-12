puts "🌱 Seeding spices..."

# Seed your database here
Patient.create([
    {
        first_name: "Prince",
        last_name: "Opodo",
        age: "28",
        weight: "66",
        phone: "0711226622",
        kin: "Omolo",
        drug_admin: "syringe injection"
    },
    {
        first_name: "Carl",
        last_name: "Tundo",
        age: "66",
        weight: "70",
        phone: "0733456612",
        kin: "Seche",
        drug_admin: "tablet"
    },
    {
        first_name: "Millie",
        last_name: "Wanjiku",
        age: "18",
        weight: "54",
        phone: "111226622",
        kin: "Chebet",
        drug_admin: "tablet"
    },
    {
        first_name: "Wepukulu",
        last_name: "Khaega",
        age: "30",
        weight: "61",
        phone: "0771224202",
        kin: "Wafula",
        drug_admin: "syringe injection"
    }
])

# puts "🌱 Seeding doctors..."

Doctor.create([
    {
        first_name: "Moris",
        last_name: "Simba",
        phone: "07999672",
        department: "Inpatient"
    },
    {
        first_name: "Juma",
        last_name: "Othman",
        phone: "07786532",
        department: "Outpatient"
    },
    {
        first_name: "Zulfa",
        last_name: "Omar",
        phone: "0733446712",
        department: "Dental"
    },
    {
        first_name: "Halima",
        last_name: "James",
        phone: "0753535353",
        department: "Maternity"
    },
    {
        first_name: "Mmaka",
        last_name: "Bahati",
        phone: "0778902546",
        department: "Inpatient"
    },
    {
        first_name: "Nassor",
        last_name: "Moshi",
        phone: "0722895439",
        department: "Outpatient"
    }
])


puts "✅ Done seeding!"

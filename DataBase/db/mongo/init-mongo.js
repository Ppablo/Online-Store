db.createUser({
    user: 'root',
    pwd: 'toor',
    roles: [
        {
            role: 'readWrite',
            db: 'testDB',
        },
    ],
});

db.createCollection('customers', { capped: false });

db.customers.insert([
  {
    "_id": ObjectId("64d0f6d2f7e3d13b58b84b5a"),
    "nombre": "Juan Perez",
    "email": "juan.perez@example.com",
    "direccion": "Calle Falsa 123",
    "orders": [
      {
        "_id": ObjectId("64d0f6d2f7e3d13b58b84b5b"),
        "fecha": new Date("2024-07-26T10:00:00Z"),
        "productos": [
          { "productId": 1, "nombre": "Producto A", "precio": 29.99, "cantidad": 2 },
          { "productId": 2, "nombre": "Producto B", "precio": 19.99, "cantidad": 1 }
        ]
      },
      {
        "_id": ObjectId("64d0f6d2f7e3d13b58b84b5c"),
        "fecha": new Date("2024-07-27T11:30:00Z"),
        "productos": [
          { "productId": 1, "nombre": "Producto A", "precio": 29.99, "cantidad": 1 }
        ]
      }
    ]
  },
  {
    "_id": ObjectId("64d0f6d2f7e3d13b58b84b5d"),
    "nombre": "Maria Lopez",
    "email": "maria.lopez@example.com",
    "direccion": "Avenida Siempre Viva 742",
    "orders": [
      {
        "_id": ObjectId("64d0f6d2f7e3d13b58b84b5e"),
        "fecha": new Date("2024-07-27T11:30:00Z"),
        "productos": [
          { "productId": 1, "nombre": "Producto A", "precio": 29.99, "cantidad": 1 }
        ]
      }
    ]
  }
]);

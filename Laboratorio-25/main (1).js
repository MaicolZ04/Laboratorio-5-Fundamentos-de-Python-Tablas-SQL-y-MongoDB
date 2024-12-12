use MusicaVallenata;

// insertar documento en la colección de Canciones
db.Canciones.insertOne({
   _id:1,
    titulo: "La Gota Fría",
    artista: "Carlos Vives",
    autor: "Emiliano Zuleta",
    album: "Clasicos de la Provincia",
    anio: 1993,
    genero: "Vallenato",
    duracion: "4:25",
    letra: "Me lleva él o me lo llevo yo...",
    reproducciones: 1500000
});

// insertar varios documentos

db.Canciones.insertMany([
    {
    
        _id:2,
        titulo: "La Gota Fría",
        artista: "Carlos Vives",
        autor: "Emiliano Zuleta",
        album: "Clasicos de la Provincia",
        anio: 1993,
        genero: "Vallenato",
        duracion: "4:25",
        letra: "Me lleva él o me lo llevo yo...",
        reproducciones: 1500000
    },
    {
        _id:3,
        titulo: "Obsesión",
        artista: "Jorge Celedón",
        autor: "Iván Calderón",
        album: "Sencillo",
        anio: 2002,
        genero: "Vallenato",
        duracion: "3:40",
        letra: "Ya no comprendo por qué no me hablas...",
        reproducciones: 2000000
    }
]);
db.Canciones.find();

// Consultar en la coleccion con criterios especificos

db.Canciones.find({anio:1993})

db.Canciones.find({ reproducciones: {$gt: 1800000}})

db.Canciones.find({genero: "Vallenato", duracion: {$gte: "4:00"}})

// actualizar numero de reproducciones de _id:1

db.Canciones.updateOne(
    {_id: 1},
    {$set: {reproducciones: 1600000}}
);
db.Canciones.find();

// atualizar todas las canciones de genero vallenato para incrementar sus reproducciones en 100000

db.Canciones.updateMany(
    {genero: "Vallenato"},
    {$inc: {reproducciones: 100000}}
);
db.Canciones.find();

// Eliminar un docuemto especifico
//db.Canciones.deleteOne({_id: 1});

// Eliminar multiples documentos
//db.Canciones.deleteMany({artista: "Carlos Vives"})

// Eliminar todos los documentos
//db.Canciones.deleteMany({});

//Eliminar la Colección
//db.Canciones.drop();
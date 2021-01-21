//
//  CourseFactory.swift
//  Modals
//
//  Created by Freddy Alexander Quispe Torres on 21/01/21.
//

import Foundation

struct courseFactory{
    static var courses = [
        Course(name: "Aplica SQL al mundo del Data Science desde cero", image: "sql", descripcion:"""
            El data scientist promedio gana más de 100.000$ al año, pero todavía es mejor valorado si además de sus algoritmos, es capaz de trabajar y conectar con una base de datos a través de SQL.
               
               Sin embargo, muchas veces la ruta no es clara, son cosas que se suelen explicar por separado y rara vez nos encontramos con un curso que nos ponga al día en todas estas tecnologías a la vez para formarnos correctamente…

               En este curso aprenderás lo que es una base de datos relacional y como puedes llevar a cabo consultas dentro de las mismas mediante un lenguaje llamado SQL.

               Empezaremos instalando las herramientas que necesitas para llevar a cabo las consultas

               Seguiremos con los comandos que se necesitan para construir una base de datos en SQL server desde cero

               Y también, debido a que no siempre tenemos almacenada nuestra información en una base de datos, sino que muy frecuentemente la tenemos guardada en archivos de excel, te explicaremos la manera en la que puedes crear una base de datos con archvos de tipo csv y cargarlos en SQL Server, que es el gestor de base de datos que usaremos en el curso

               Veremos los comandos básicos con los que podrás extraer información de una tabla de datos, aplicando filtros a la información contenida en ella, obteniendo sus características principales, y mostrarla de forma ordenada,

               Así como la manera en la que puedes unir dos o mas tablas, mediante consultas ya sea sencillas, o más complejas, por ejemplo mediante la creación de vistas

               Una vez que tengas lista la información mediante las consultas hechas con el lenguaje SQL, utilizaremos el lenguaje R para detectar valores atípicos y parámetros estadísticos tales como el rango, la moda, la media y la desviación estándar, entre otros, así como para generar gráficos mediante los cuales podremos comprender todavía mejor nuestros datos, y por ende, mejorar las decisiones que tomemos en base a ellos.

               Para lograr todo esto seguiremos una metodología basada en aprender conceptos de forma práctica y dejarte una serie de ejercicios para practicar, de modo que

               Estudiaremos los conceptos en unos pocos minutos

               Te enseñaremos a aplicarlos directamente en código

               Y a partir de aquí tendrás todo un conjunto de ejercicios para practicar y consolidar tus conocimientos.

               Estaremos contigo a cada paso que des en el curso para ayudarte a entender todo sobre las bases de datos y su análisis con Excel o R. No tengas nada de miedo, será un aprendizaje divertido y entretenido!

               Por si fuera poco, tendrás a tu disposición una comunidad para aprender con amigos a distancia que también buscan aprender el uso de las bases de datos, ejercicios resueltos, todo el código fuente para descargar desde el primer día y mucho más

               ¿Estás listo? Este es el camino directo para dominar el SQL y aplicarlo de forma práctica al mundo del data science. Así que no lo dudes más, y apúntate al curso para trabajar juntos en las habilidades que harán de ti un mejor científico de datos!
"""
        ),
        Course(name: "Curso de Android con Kotlin: Intensivo y práctico desde cero", image: "kotlin", feature: true),
        Course(name: "Experto en Firebase para Android + MVP Curso Completo +30hrs", image: "android_firebase"),
        Course(name: "Diseño de apps para iOS 13 con Swift UI desde cero", image: "swift", feature: true),
        Course(name: "Curso completo de iOS 13 con Swift UI 5.2: de cero a experto", image: "swift2"),
        Course(name: "POO en C#: aplica conceptos de POO en C# en proyectos reales", image: "csharp", feature: true),
        Course(name: "Curso completo de Unity 2020: domina el mundo de videojuegos", image: "unity"),
        Course(name: "Probabilidad para Machine Learning y Big Data con R y Python", image: "probabilidades", feature: true),
        Course(name: "Machine Learning de A a la Z: R y Python para Data Science", image: "machine_learning")
        ]
}

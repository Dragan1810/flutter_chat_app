use actix_web::{web, App, HttpServer, Responder};

mod api;


fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .configure(api::index::index_config)
    })
    .bind("127.0.0.1:8080")?
    .run()
}

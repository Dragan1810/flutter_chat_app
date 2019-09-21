use actix_web::{web, HttpResponse, Responder};
use std::future::IntoFuture;
// use pkg future
fn login() -> impl IntoFuture<Item = &'static str, Error = Error> {
    Ok("wat")
}


pub fn index_config(cfg: &mut web::ServiceConfig) {
    cfg.service(
        web::resource("/login")
            .route(web::get().to(|| HttpResponse::MethodNotAllowed()))
            .route(web::head().to(|| HttpResponse::MethodNotAllowed()))
            .data(web::JsonConfig::default().limit(4096))
            .route(web::post().to_async(login),
    );
}

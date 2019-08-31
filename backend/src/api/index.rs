use actix_web::{web, HttpResponse, Responder};

fn index() -> impl Responder {
    HttpResponse::Ok().body("Hey there!")
}



pub fn index_config(cfg: &mut web::ServiceConfig) {
    cfg.service(web::resource("/")
        .route(web::get().to(index))
        .route(web::head().to(|| HttpResponse::MethodNotAllowed()))
    );
}

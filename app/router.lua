local common_router = include("app.routes.common")
local auth_router = include("app.routes.auth")
local topic_router = include("app.routes.topic")
local topics_router = include("app.routes.topics")
local comment_router = include("app.routes.comment")
local comments_router = include("app.routes.comments")
local user_router = include("app.routes.user")
local upload_router = include("app.routes.upload")
local category_router = include("app.routes.category")
local notification_router = include("app.routes.notification")
local error_router = include("app.routes.error")

return function(app)
    app:use("/auth", auth_router())
    app:use("/error", error_router())
    app:use("/user", user_router())
    app:use("/category", category_router())
    app:use("/topic", topic_router())
    app:use("/topics", topics_router())
    app:use("/comment", comment_router())
    app:use("/comments", comments_router())
    
    app:use("/notification", notification_router())
    app:use("/upload", upload_router())


    app:get("/", common_router.index)
    app:get("/index", common_router.index)
    app:get("/share", common_router.share)
    app:get("/ask", common_router.ask)
    app:get("/settings", common_router.settings)
    app:get("/about", common_router.about)

end


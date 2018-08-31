const Koa = require('koa')

const app = new Koa()

app.use(ctx=>{
    ctx.body=10086
})

app.listen('8000')

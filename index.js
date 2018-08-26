const Koa = require('koa')

const app = new Koa()

app.use(ctx=>{
    ctx.body=149
})

app.listen('3001')

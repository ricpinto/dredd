require('./handle-windows-sigint')()
console.log('[stdout.coffee] running')

exit = ->
  console.log('[stdout.coffee] inside signal handler')
  process.stdout.write('exiting\n')
  console.log('[stdout.coffee] exiting with zero')
  process.exit(0)

console.log('[stdout.coffee] setting up signal handlers')
process.on('SIGTERM', exit)
process.on('SIGINT', exit)


console.log('[stdout.coffee] writing to stdout')
process.stdout.write('standard output text\n')
setInterval(( -> ), 100)

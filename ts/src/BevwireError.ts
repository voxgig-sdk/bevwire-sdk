
import { Context } from './Context'


class BevwireError extends Error {

  isBevwireError = true

  sdk = 'Bevwire'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  BevwireError
}


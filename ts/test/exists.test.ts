
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { BevwireSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await BevwireSDK.test()
    equal(null !== testsdk, true)
  })

})

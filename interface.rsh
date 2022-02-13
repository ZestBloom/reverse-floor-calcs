'reach 0.1';
'use strict';
// -----------------------------------------------
// Name: Interface Template
// Description: NP Rapp simple
// Author: Nicholas Shellabarger
// Version: 0.0.2 - initial
// Requires Reach v0.1.7 (stable)
// ----------------------------------------------
export const Participants = () =>[
  Participant('Alice', { 
    ...hasConsoleLogger
  })
]
export const Views = () => []
export const Api = () => []
export const App = (map) => {
  const [
    _,
    _,
    [Alice],
    _,
    _,
  ] = map;
  Alice.publish()
  const start = 2 * 1000000;
  const floor = 1 * 1000000;
  const now = 1644569215;
  const then = 1644569215 + 300;
  const diff = start - floor
  const diff2 = then - now
  const div2 = diff / diff2 // 5 minutes
  const div3 = diff / 86400 // day
  const div4 = diff / 604800 // week
  const div5 = diff / 31536000 // year
  const div6 = diff / 157680000 // year
  const tot2 = div2 * diff2 
  const tot3 = div3 * 86400 
  const tot4 = div4 * 604800
  const tot5 = div5 * 31536000
  const tot6 = div6 * 157680000
  const calc = (d, d2, p) => {
    const fD = fx(6)(Pos, d)
    const fD2 = fx(6)(Pos, d2)
    return fxdiv(fD, fD2, p)
  }
  const fT = calc(diff, diff2, 1000000).i.i * diff2 / 1000000
  const fT2 = calc(diff, 86400, 1000000).i.i * 86400 / 1000000
  const fT3 = calc(diff, 604800, 1000000).i.i * 604800 / 1000000
  const fT4 = calc(diff, 31536000, 1000000).i.i * 31536000 / 1000000
  const fT5 = calc(diff, 157680000, 1000000).i.i * 157680000 / 1000000
  Alice.only(() => {
    interact.log("start", start)
    interact.log("floor", floor)
    interact.log("start - floor", diff)
    interact.log("then - now", diff2)
    interact.log("5 min au/sec", div2)
    interact.log("1 day au/sec", div3)
    interact.log("1 week au/sec", div4)
    interact.log("1 year au/sec", div5)
    interact.log("5 min au", tot2)
    interact.log("1 day au", tot3)
    interact.log("1 week au", tot4)
    interact.log("1 year au", tot5)
    interact.log("5 year au", tot6)
    interact.log("5 min au (fp)", fT)
    interact.log("1 day au (fp)", fT2)
    interact.log("1 week au (fp)", fT3)
    interact.log("1 year au (fp)", fT4)
    interact.log("1 year au (fp)", fT4)
    interact.log("5 year au (fp)", fT5)
  })
  commit()
  exit()
}
// ----------------------------------------------

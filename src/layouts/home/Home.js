import React, { Component } from 'react'
import { ContractData, ContractForm } from 'drizzle-react-components'
import logo from '../../logo.png'

class Home extends Component {
  render() {
    return (
      <main className="container">
        <div className="pure-g">
          <div className="pure-u-1-1 header">
            <img src={logo} alt="drizzle-logo" />
            <h1>Drizzle Examples</h1>
            <p>Examples of how to get started with Drizzle in various situations.</p>

            <br/><br/>
          </div>

          <div className="pure-u-1-1">
            <h2>Schrödinger's Box</h2>
            <p>This should show if a cat is "Alive" or "Dead" based on whether a naive pseudorandom number based on the blockhash is divisible by 2.</p>
            <p><strong>Last Cat, Alive or Dead?</strong>: <ContractData contract="KittyBox" method="lastCat" /></p>
            <div><strong>Sematary</strong>: <ContractData contract="KittyBox" method="getListLength" /> cat(s)</div>
            <div><strong>Most Recently Deceased</strong>: <ContractData contract="Random" method="mostRecentlyDeceased" /></div>
            <ContractForm contract="Random" method="observe" />

            <br/><br/>
          </div>

        </div>
      </main>
    )
  }
}

export default Home

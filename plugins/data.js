const budgets = require('assets/budgets.json')
export default (context, inject) => {
  inject('budgets', () => JSON.parse(JSON.stringify(budgets)))
}

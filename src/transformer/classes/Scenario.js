class Scenario {
  constructor(name) {
    this.name = name;
    this.steps = [];
    this.preconditions = [];
  }
}

module.exports = Scenario;
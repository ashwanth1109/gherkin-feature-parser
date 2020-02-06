class Scenario {
  constructor(name) {
    this.name = name;
    this.steps = [];
    this.preconditions = [];
    this.examples = [];
  }

  addExample(example) {
    if (example.length) {
      this.examples.push(example.map(elem => elem.trim()));
    }
  }
}

module.exports = Scenario;

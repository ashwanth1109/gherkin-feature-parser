const extractTableElements = line =>
  line
    .trim()
    .split('|')
    .map(el => el.trim())
    .filter(el => el);

class Step {
  constructor(description, outcome) {
    this.description = description;
    this.outcome = outcome;
    this.table = null;
  }

  addTableElement(line) {
    if (!this.table) {
      this.table = {
        th: extractTableElements(line),
        td: []
      };
    } else {
      this.table.td.push(extractTableElements(line));
    }
  }
}

module.exports = Step;

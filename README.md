# AI in the Code Review Pipeline ⚙️🤖

This repo holds the slides, notes, and supporting material for my *Lunch & Learn* talk:  
**"AI in the Code Review Pipeline: Practical Wins, Real Limits."**

The focus: how AI can reduce friction in real engineering workflows — from automated code review to agentic coding and beyond.

---

## 📚 Content
- `slide-deck.md`: Marp slide source
- `images/`: Assets used in slides

---

## 📦 Prerequisites
- [Node.js](https://nodejs.org/) and npm installed
- [Marp CLI](https://github.com/marp-team/marp-cli) (installed via npm)

---

## 🚀 Usage

### Install dependencies
```bash
npm install
```

### Build slides
Generate the HTML slide deck from Markdown:
```bash
npx marp slide-deck.md \
  --allow-local-files \
  --html \
  --output slide-deck.html
```

Other formats:  
- PDF → `--pdf`  
- PowerPoint → `--pptx`

---

## 💡 Speaker Notes
Speaker notes are included in the Markdown file. They are viewable in Marp's presenter mode.

---

## 🤝 Contributing
Open to feedback! PRs and issues are welcome if you’d like to improve the slides or extend the examples.

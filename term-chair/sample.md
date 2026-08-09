---
marp: true
theme: default
paginate: true
style: |
  @import url("./term-chair.css");
---

<!-- _class: lead -->

# கவனக் கருவிகள்
## Attention Mechanisms — 15 நிமிட அறிமுகம்

<img class="logo" src="./logo.png" />

---

<!-- _class: divider -->

# அத்தியாயம் 5
## Transformers & Language Models

---

<!-- _class: term -->

# Attention — கவனம்

**கவனம்** (attention mechanism) [^1]
கவனம் + கருவி. மாதிரி எந்த உள்ளீட்டுச் சொற்களில் கவனம் செலுத்த வேண்டும் என்பதை
கற்றுக்கொள்ளும் ஒரு நுட்பம். மொழிபெயர்ப்பு போன்ற பணிகளில் இது முக்கியப் பங்கு
வகிக்கிறது.

[^1]: சொல்லாய்வு குழு உருவாக்கிய கலைச்சொல்.

---

## சாதாரண உள்ளடக்கப் பக்கம்

| English | தமிழ் |
| :--- | :--- |
| Token | குறியீடு |
| Embedding | பொதிவு |

> **💡 குறிப்பு**
> இது ஒரு blockquote callout.

---

<!-- _class: demo -->

# நேரடி செயல்முறை: கவன மேட்டிரிக்ஸ்

Colab குறிப்பேட்டில் attention weights-ஐக் காட்டுதல்.

---

<!-- _class: chat-check -->

# வினா: இந்தச் சொல் எது?

"மாதிரி எந்தச் சொற்களில் கவனம் செலுத்த வேண்டும் எனத் தீர்மானிக்கும் நுட்பம்"

---

<!-- _class: chat-check-answer -->

# விடை: Attention (கவனம்)

---

<!-- _class: discussion -->

# விவாதம்

தமிழில் இயந்திர மொழிபெயர்ப்பில் attention எப்படிப் பயன்படுகிறது?

---

<!-- _class: chat-waterfall -->

# திறந்த கேள்வி

உங்கள் சொந்த வார்த்தைகளில் "கவனம்" என்பதை விளக்குங்கள்.

---

# GFM Alerts

<div class="gfm-alert gfm-note">
<div class="gfm-alert-title">Note</div>
<p>கவனம் என்பது ஒரு core building block.</p>
</div>

<div class="gfm-alert gfm-tip">
<div class="gfm-alert-title">Tip</div>
<p>05-transformers-language-models.md உடன் ஒப்பிடவும்.</p>
</div>

<div class="gfm-alert gfm-important">
<div class="gfm-alert-title">Important</div>
<p>கலைச்சொல் மூலம் சொல்லாய்வு குழுவிலிருந்து.</p>
</div>

<div class="gfm-alert gfm-warning">
<div class="gfm-alert-title">Warning</div>
<p>Sanskrit borrowings தவிர்க்கவும்.</p>
</div>

<div class="gfm-alert gfm-caution">
<div class="gfm-alert-title">Caution</div>
<p>15 நிமிடம் மட்டுமே, நேரத்தை கவனியுங்கள்.</p>
</div>

<div class="industry-badge">REAL-WORLD SCENARIO</div>

Google Translate தமிழ் மொழிபெயர்ப்பில் attention layers பயன்படுத்துகிறது.

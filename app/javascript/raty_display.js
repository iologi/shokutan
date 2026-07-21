document.addEventListener("turbo:load", () => {
  const starOn  = "/assets/star-on.png";
  const starOff = "/assets/star-off.png";
  const starHalf = "/assets/star-half.png";

  document.querySelectorAll(".raty").forEach((elem) => {
    const score = Number(elem.dataset.score);

    elem.innerHTML = "";

    window.raty(elem, {
      starOn: starOn,
      starOff: starOff,
      starHalf: starHalf,
      score: score,
      readOnly: true,
    });
  });
});

export const fetchSearchGiphys = (searchTerm) => {
    // debugger
    return $.ajax({
      url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=${'tMh9ZCUI4UAWHXvW3O6FIP4K34RPkLvY'}&limit=2`,
      type: "GET",
    });
};

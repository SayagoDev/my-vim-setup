local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  return
end

-- Attach to certain Filetypes, add special configuration for `html`
-- Use `background` for everything else.
colorizer.setup {
 '*'; -- Highlight all files, but customize some others.
  css = {
    css    = true;
    css_fn = true;
  };
  html = { names = false; } -- Disable parsing "names" like Blue or Gray
}

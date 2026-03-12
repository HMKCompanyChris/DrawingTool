// Preload script — runs in renderer with Node access before page loads
// Kept minimal: the tool is self-contained and only needs browser APIs
const { contextBridge } = require('electron')

contextBridge.exposeInMainWorld('electronApp', {
  version: process.versions.electron,
  platform: process.platform
})

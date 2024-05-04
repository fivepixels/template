import type { BuildConfig } from "bun";

export const defaultBuildingConfiguration: BuildConfig = {
  entrypoints: [],
  outdir: "./dist",
  splitting: false,
  sourcemap: "inline",
  format: "esm",
  target: "bun",
  minify: true,
};

await Bun.build({
  ...defaultBuildingConfiguration,
  entrypoints: ["./src/index.ts"],
});

console.log("BUILDING DONE!");

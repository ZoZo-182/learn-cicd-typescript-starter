import { expect, test } from "vitest";
import { getAPIKey } from "../api/auth.ts";

const header = {};

test("returns null because empty header", () => {
  expect(getAPIKey(header)).toBe(null);
});

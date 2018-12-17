defmodule Day01 do
  @doc """
    --- Day 1: Chronal Calibration ---
    "We've detected some temporal anomalies," one of Santa's Elves at the Temporal Anomaly Research and Detection Instrument Station tells you. She sounded pretty worried when she called you down here. "At 500-year intervals into the past, someone has been changing Santa's history!"

    "The good news is that the changes won't propagate to our time stream for another 25 days, and we have a device" - she attaches something to your wrist - "that will let you fix the changes with no such propagation delay. It's configured to send you 500 years further into the past every few days; that was the best we could do on such short notice."

    "The bad news is that we are detecting roughly fifty anomalies throughout time; the device will indicate fixed anomalies with stars. The other bad news is that we only have one device and you're the best person for the job! Good lu--" She taps a button on the device and you suddenly feel like you're falling. To save Christmas, you need to get all fifty stars by December 25th.

    Collect stars by solving puzzles. Two puzzles will be made available on each day in the advent calendar; the second puzzle is unlocked when you complete the first. Each puzzle grants one star. Good luck!

    After feeling like you've been falling for a few minutes, you look at the device's tiny screen. "Error: Device must be calibrated before first use. Frequency drift detected. Cannot maintain destination lock." Below the message, the device shows a sequence of changes in frequency (your puzzle input). A value like +6 means the current frequency increases by 6; a value like -3 means the current frequency decreases by 3.

    For example, if the device displays frequency changes of +1, -2, +3, +1, then starting from a frequency of zero, the following changes would occur:

    Current frequency  0, change of +1; resulting frequency  1.
    Current frequency  1, change of -2; resulting frequency -1.
    Current frequency -1, change of +3; resulting frequency  2.
    Current frequency  2, change of +1; resulting frequency  3.
    In this example, the resulting frequency is 3.

    Here are other example situations:

    ## Examples

    iex> Day01.solve("test/ex1.txt")
    3

    iex> Day01.solve("test/ex2.txt")
    0

    iex> Day01.solve("test/ex3.txt")
    -6

    iex> Day01.solve("part_1.txt")
    522

    iex> Day01.first_double_frequency("test/ex4.txt")
    0

    iex> Day01.first_double_frequency("test/ex5.txt")
    10

    iex> Day01.first_double_frequency("part_1.txt")
    522

    Starting with a frequency of zero, what is the resulting frequency after all of the changes in frequency have been applied?

    """
    def solve input do
      input
      |> File.read!
      |> String.split("\n", trim: true)
      |> Enum.reduce(0, fn x, acc -> String.to_integer(x) + acc end)
    end

    def first_double_frequency input do
      input
      |> File.read!
      |> String.split("\n", trim: true)
      |> mx
    end

  end

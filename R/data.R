#' Mega Millions (Before 10/22/13)
#'
#' Historical data for the Mega Millions game. On October 22, 2013, the format changed
#' from 5/56 + 1/46 to the current 5/75 + 1/15 format.
#' @format A data frame with 1713 rows and 7 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{megaball}{megaball result}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#'   \item{N5}{5th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"mega.mill.1"

#' Mega Millions (10/22/13 and beyond)
#'
#' Historical data for the Mega Millions game. On October 22, 2013, the format changed
#' from 5/56 + 1/46 to the current 5/75 + 1/15 format.
#' @format A data frame with 194 rows and 7 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{megaball}{megaball result}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#'   \item{N5}{5th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"mega.mill.2"

#' Power Ball
#'
#' Historical data for the Power Ball game.
#' @format A data frame with 582 rows and 7 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{megaball}{powerball result}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#'   \item{N5}{5th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"power.ball"

#' CASH4LIFE
#'
#' Historical data for the CASH4LIFE game. Pick five different numbers from 1 through 60;
#' then select one Cash Ball number from 1 through 4.
#' @format A data frame with 34 rows and 7 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{cashball}{cash ball result}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#'   \item{N5}{5th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"cash.4.life"

#' $1,000,000 Money Ball
#'
#' Historical data for the $1,000,000 Money Ball game. You pick five (5) numbers,
#' the Lottery will then select five (5) numbered balls, and if the Gold Million Dollar
#' Money Ball is drawn before all five (5) numbers have been selected, the top prize
#' jumps to $1,000,000. Note: This game was discontinued 8/29/15.
#' @format A data frame with 100 rows and 7 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{moneyball}{money ball result}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#'   \item{N5}{5th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"money.ball"

#' Decades of Dollars
#'
#' Historical data for the Decades of Dollars game. You pick six (6) numbers,
#' the Lottery will then select six (6) numbered balls.
#' Note: This game was discontinued in favor of CASH4LIFE.
#' @format A data frame with 443 rows and 7 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#'   \item{N5}{5th number in order}
#'   \item{N6}{6th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"decades.of.dollars"

#' Cash 5 (once daily)
#'
#' Historical data for the Cash 5 once daily game. On April 11, 1999,
#' Cash 5 switched to twice daily drawings.
#' @format A data frame with 1187 rows and 6 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#'   \item{N5}{5th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"cash.5.1xday"

#' Cash 5 (twice daily)
#'
#' Historical data for the Cash 5 twice daily game. On April 11, 1999,
#' Cash 5 switched to twice daily drawings.
#' @format A data frame with 11,164 rows and 7 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{time}{time of drawing: day or night}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#'   \item{N5}{5th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"cash.5.2xday"

#' Pick 4 (once daily)
#'
#' Historical data for the Pick 4 once daily game. On January 30, 1995,
#' Pick 4 switched to twice daily drawings.
#' @format A data frame with 1041 rows and 5 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"pick.4.1xday"

#' Pick 4 (twice daily)
#'
#' Historical data for the Pick 4 twice daily game. On January 30, 1995,
#' Pick 4 switched to twice daily drawings.
#' @format A data frame with 13788 rows and 6 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{time}{time of drawing: day or night}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#'   \item{N4}{4th number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"pick.4.2xday"

#' Pick 3 (once daily)
#'
#' Historical data for the Pick 3 once daily game. On January 30, 1995,
#' Pick 3 switched to twice daily drawings.
#' @format A data frame with 1777 rows and 4 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"pick.3.1xday"

#' Pick 3 (twice daily)
#'
#' Historical data for the Pick 3 twice daily game. On January 30, 1995,
#' Pick 3 switched to twice daily drawings.
#' @format A data frame with 13790 rows and 5 variables:
#' \describe{
#'   \item{date}{date of draw}
#'   \item{time}{time of drawing: day, night1 or night2 (Note: two nightly drawings were held
#'   on 10/30/08 and 11/09/08)}
#'   \item{N1}{1st number in order}
#'   \item{N2}{2nd number in order}
#'   \item{N3}{3rd number in order}
#' }
#' @source \url{https://www.valottery.com}
#'
"pick.3.2xday"

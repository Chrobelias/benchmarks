(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.range "7" "9"))))

(assert (<= (* 2 (str.to_int x)) 84))
(assert (>= (* 5 (str.to_int x)) 7))
(assert (< (+ (str.len x) (* (- 6) (str.to_int x))) 58))
(assert (> (str.len x) 25))

(check-sat)
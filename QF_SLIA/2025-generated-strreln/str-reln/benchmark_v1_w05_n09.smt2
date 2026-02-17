(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "6") (re.range "7" "9")))))

(assert (< (* (- 8) (str.to_int x)) 46))
(assert (<= (+ (* (- 6) (str.len x)) (* (- 10) (str.to_int x))) 67))
(assert (<= (* (- 10) (str.to_int x)) 84))
(assert (>= (* 2 (str.len x)) 94))

(check-sat)
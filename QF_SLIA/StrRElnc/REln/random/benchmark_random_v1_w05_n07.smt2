(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "72"))))

(assert (= (* (- 6) (str.len x)) 32))
(assert (<= (* 4 (str.len x)) 66))
(assert (> (* (- 2) (str.to_int x)) 94))
(assert (<= (+ (str.len x) (* 10 (str.to_int x))) 34))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "977") (re.union (re.+ (str.to_re "365")) (str.to_re "1")))))

(assert (<= (* (- 6) (str.len x)) 64))
(assert (> (* (- 7) (str.to_int x)) 4))
(assert (> (* 10 (str.to_int x)) 32))
(assert (< (* (- 6) (str.to_int x)) 26))

(check-sat)
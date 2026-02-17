(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.++ (str.to_re "72") (str.to_re "74"))))))

(assert (< (+ (* 5 (str.len x)) (* (- 9) (str.to_int x))) 52))
(assert (> (* 7 (str.to_int x)) 39))
(assert (> (+ (* 10 (str.len x)) (* (- 10) (str.to_int x))) 39))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "19") (re.* (str.to_re "906"))))))

(assert (> (+ (* (- 4) (str.len x)) (* 4 (str.to_int x))) 25))
(assert (< (+ (* 10 (str.len x)) (* 2 (str.to_int x))) 59))

(check-sat)
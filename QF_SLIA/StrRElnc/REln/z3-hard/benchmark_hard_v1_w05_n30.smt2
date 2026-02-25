(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "7") (str.to_re "35")))))

(assert (< (+ (* (- 6) (str.len x)) (* 5 (str.to_int x))) 79))
(assert (> (str.len x) 40))
(assert (> (+ (* 7 (str.len x)) (* (- 2) (str.to_int x))) 50))

(check-sat)
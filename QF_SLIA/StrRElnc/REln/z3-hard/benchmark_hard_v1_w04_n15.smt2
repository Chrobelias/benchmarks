(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "30") (re.++ (str.to_re "922") (re.* (str.to_re "947"))))))

(assert (<= (+ (* (- 6) (str.len x)) (* 5 (str.to_int x))) 7))
(assert (< (+ (str.len x) (* (- 7) (str.to_int x))) 25))

(check-sat)
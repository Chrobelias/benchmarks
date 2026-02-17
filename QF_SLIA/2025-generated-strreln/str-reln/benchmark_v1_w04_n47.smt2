(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "451") (re.++ (str.to_re "347") (re.+ (str.to_re "299"))))))

(assert (> (+ (* 2 (str.len x)) (* (- 2) (str.to_int x))) 2))
(assert (< (* (- 9) (str.len x)) 35))
(assert (< (* 9 (str.to_int x)) 78))

(check-sat)
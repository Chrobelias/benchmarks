(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "731") (re.++ (re.* (re.+ (str.to_re "221"))) (str.to_re "44")))))

(assert (= (+ (* (- 10) (str.len x)) (str.to_int x)) 90))
(assert (> (* 6 (str.len x)) 52))

(check-sat)
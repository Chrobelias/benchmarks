(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "19") (re.++ (re.++ (re.* (str.to_re "43")) (str.to_re "16")) (str.to_re "44")))))

(assert (> (+ (str.len x) (* (- 7) (str.to_int x))) 93))

(check-sat)
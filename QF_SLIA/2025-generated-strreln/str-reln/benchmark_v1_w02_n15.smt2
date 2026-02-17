(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.range "2" "6") (re.union (re.+ (str.to_re "37")) (str.to_re "32"))) (str.to_re "640"))))

(assert (> (+ (* 8 (str.len x)) (* (- 8) (str.to_int x))) 76))

(check-sat)
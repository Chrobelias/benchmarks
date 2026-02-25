(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.+ (re.+ (re.range "6" "8"))) (str.to_re "54"))))

(assert (> (+ (* (- 4) (str.len x)) (* (- 10) (str.to_int x))) 10))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (re.range "1" "5") (str.to_re "7")))))

(assert (= (* (- 9) (str.len x)) 48))
(assert (> (+ (* (- 10) (str.len x)) (str.to_int x)) 47))

(check-sat)
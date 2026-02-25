(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "223")) (re.++ (str.to_re "3") (re.+ (re.range "6" "9"))))))

(assert (= (+ (* (- 2) (str.len x)) (* 2 (str.to_int x))) 66))
(assert (< (* (- 6) (str.len x)) 38))

(check-sat)
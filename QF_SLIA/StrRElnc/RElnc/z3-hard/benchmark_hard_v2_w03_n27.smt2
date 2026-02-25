(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "15" y) (str.++ x "47")))

(assert (str.in_re y (re.++ (str.to_re "18") (re.++ (str.to_re "412") (re.++ (re.range "3" "5") (re.* (re.range "5" "8")))))))
(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "77")) (re.+ (re.range "0" "9"))) (re.range "1" "3"))))

(assert (<= (+ (- (str.len x)) (* 5 (str.to_int y))) 83))
(assert (>= (+ (* 3 (str.len x)) (* 10 (str.len y))) 84))

(check-sat)
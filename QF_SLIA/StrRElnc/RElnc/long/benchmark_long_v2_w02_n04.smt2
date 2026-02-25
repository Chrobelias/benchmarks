(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ x "44")))

(assert (str.in_re x (re.+ (re.+ (re.++ (re.range "5" "9") (re.* (str.to_re "54")))))))
(assert (str.in_re y (re.+ (re.++ (re.* (re.range "7" "9")) (re.range "2" "5")))))

(assert (>= (+ (str.len y) (* 3 (str.to_int y))) 62))

(check-sat)
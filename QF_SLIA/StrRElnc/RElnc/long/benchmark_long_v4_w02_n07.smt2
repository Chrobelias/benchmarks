(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ a y z "65" "36" "63")))

(assert (str.in_re a (re.union (re.range "4" "8") (re.++ (str.to_re "522") (re.* (str.to_re "3"))))))
(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "46")) (re.+ (re.range "2" "4"))))))
(assert (str.in_re x (re.* (re.union (re.range "0" "9") (re.+ (re.+ (str.to_re "7")))))))
(assert (str.in_re z (re.* (re.* (re.++ (str.to_re "54") (re.* (str.to_re "897")))))))

(assert (<= (+ (str.len a) (- (str.to_int y)) (* (- 10) (str.to_int a))) 45))

(check-sat)